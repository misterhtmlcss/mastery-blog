class ArticlesController < ApplicationController
  def index
    render html:"default"
  end

  def new
    render html:"new"
  end

  def edit
    render html:"edit"
  end

  def show
    render html:"show"
  end

  def create
    render html:"create"
  end

  def update
    render html:"update"
  end

  def update
    render html:"destroy"
  end
end
