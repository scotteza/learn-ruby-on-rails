# frozen_string_literal: true

class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

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
end
