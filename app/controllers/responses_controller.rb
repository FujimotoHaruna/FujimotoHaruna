class ResponsesController < ApplicationController
    before_action :authenticate_user!

    def create
      post = Post.find(params[:post_id])
      response = post.responses.build(response_params) 
      response.user_id = current_user.id
        if response.save
          flash[:success] = "コメントしました"
          redirect_back(fallback_location: root_path)
        else
          flash[:success] = "コメントできませんでした"
          redirect_back(fallback_location: root_path)
        end
    end

    def destroy
      response = Response.find(params[:id])
      response.destroy
      redirect_back(fallback_location: root_path)
    end

  private

    def response_params
      params.require(:response).permit(:content)
    end

end
