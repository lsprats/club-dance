class Blog::ArticlesController < ApplicationController
  expose(:article) { Article.friendly.find(params[:id]) }
  expose(:articles){ Article.paginate(:page => params[:page], :per_page => 9).all }
  expose(:comment) { Comment.new }
  expose(:comments){ Comment.all }

  def index; end
  def show; end
end
