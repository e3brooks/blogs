class ArticlesController < ApplicationController
  def index
    # fetch all articles from db
    @articles = Article.all
  end

  def show
    # access correct article
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    # validations are checked before saving
    if @article.save
      redirect_to @article
    else
      # 422 Unprocessable Entity
      render :new, status: :unprocessable_entity
    end
  end

  private 
    def article_params
      # specify values allowed in param hash
      params.require(:article).permit(:title, :body)
    end

end
