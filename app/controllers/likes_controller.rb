class LikesController < ApplicationController
  # attr_accessor :article_id
  def index
    @likes = Article.find(params[:article_id]).likes
    puts @likes[0]
  end
  
end
