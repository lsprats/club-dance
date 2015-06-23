class CommentsController < ApplicationController
  expose(:article)    { Article.find(params[:article_id]) }

  def create
    c = article.comments.build(comment_params)

    if c.save
      redirect_to article_path(article), notice: 'Se ha creado el comentario correctamente'
    else
      # render :show
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:article_id, :body)
  end

end
