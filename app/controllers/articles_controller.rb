class ArticlesController < ApplicationController
  before_action :set_params, only: [:show, :update, :edit, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def update
    @article.update(article_params)
    redirect_to article_path
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def new
    @article = Article.new
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_params
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
