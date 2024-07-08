class ArticlesController < ApplicationController
  def index
    # fetch all articles from db
    @articles = Article.all
  end

  def show
    # access correct article
    @article = Article.find(params[:id])
  end

end
