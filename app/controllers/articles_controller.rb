# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :fetch_article, only: %i[show edit update destroy]

  def show; end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit; end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    save_result = @article.save
    if save_result
      flash[:notice] = 'Save succeeded'
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = 'Edit succeeded'
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def fetch_article
    @article = Article.find(params[:id])
  end
end
