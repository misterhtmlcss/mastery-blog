class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    render html: "show"
  end

  def new
    render html:"new"
  end

  def create
    render html:"create"
  end

  def edit
    render html:"edit"
  end

  def update
    render html: "update"
  end

  def destroy
    render html:"destroy"
  end
end
