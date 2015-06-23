class Admin::ArticlesController < Admin::BaseController
  defaults resource_class: Article.friendly

  private

    def article_params
      params.require(:article).permit(:title, :description, :content)
    end
end
