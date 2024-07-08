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

  # fetches article from db and stores in @article for form use
  def edit
    @article = Article.find(params[:id])
  end

  # re-fetches article from db and attempt to update with submitted form data
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end


  private 
    def article_params
      # specify values allowed in param hash
      params.require(:article).permit(:title, :body)
    end

end
