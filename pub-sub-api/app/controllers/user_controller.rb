class UserController < ApplicationController

  include Wisper::Publisher

  before_action :get_user, only: [:subscribe, :unsubscribe, :post, :notes]

  def subscribe
    if @user.subscribe(params[:topic])
      render json: {'status' => 1}
    else
      render json: {'status' => 0}
    end
  end

  def unsubscribe
    if @user.unsubscribe(params[:topic])
      render json: {'status' => 1 }
    else
      render json: {'status' => 0}
    end
  end

  def post
    @post_id = @user.post(post_params)
    if @post_id > 0
      publish(:post_created, Post.find(@post_id))
      render json: {'status' => 1}
    else
      render json: {'status' => 0}
    end
  end

  def notes
      render :json =>  @user.my_notes
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def post_params
      params.require(:post).permit(:title, :text, :topic)
  end
end
