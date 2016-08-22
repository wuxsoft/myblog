class ArticlesController < ApplicationController
  def index
    @articles = Article.order('id desc')
  end

  def show
  end

  def destory
  end
end
