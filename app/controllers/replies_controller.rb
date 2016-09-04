class RepliesController < ApplicationController
  before_action :set_reply, only: [:edit, :destroy, :update, :show]

  def index
  end

  def new
    @reply = Reply.new(reply_params)
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.member = current_member
    if @reply.save
      redirect_to(article_path(@reply.article), notice: '提交成功')
    else
      render 'new'
    end
  end

  def edit

  end

  def set_reply
    @reply = Reply.find(params[:id])
  end

  def reply_params
    params.require(:reply).permit(:article_id, :body, :member_id)
  end
end
