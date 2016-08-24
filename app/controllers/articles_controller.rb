class ArticlesController < ApplicationController
  def index
    @articles = Article.order('id desc')
    # 已设置默认分页条数为 20 条，设置为 1 为了调试
    @articles = @articles.paginate page: params[:page] # , per_page: 1
  end

  def show
    @article = Article.find(params[:id])
    # @article.record_timestamps = false
  end

  def destory
  end
end
