class ArticlesController < ApplicationController
  before_action :set_cases, only: [:index, :show]
  def index
    @articles = Article.order('id desc')
    unless params[:case_id].blank?
      @articles = @articles.where(case_id: params[:case_id])
    end
    # 已设置默认分页条数为 20 条，设置为 1 为了调试
    @articles = @articles.paginate page: params[:page], per_page: 1
  end

  def show
    @article = Article.find(params[:id])
    @article.set_view_count
    @reply = Reply.new
    @reply.article = @article
  end

  def destory
  end

  def set_cases
    @cases = Case.order("count desc")
  end
end
