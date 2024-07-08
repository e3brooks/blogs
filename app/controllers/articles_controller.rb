class ArticlesController < ApplicationController
  def index
    # fetch all articles from db
    @articles = Article.all
  end
end
