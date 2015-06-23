require "rails_helper"

feature "Article management", type: :feature do
  let(:admin)    { FactoryGirl.create(:admin) }
  let(:article)  { FactoryGirl.create(:article) }

  background do
    admin_login(admin)
    visit admin_articles_path
  end

  scenario "creating a new article" do
    click_on "Nuevo artículo"
    expect(current_path).to eql(new_admin_article_path)

    fill_in     "article[title]",         with: "Lorem"
    fill_in     "article[description]",   with: "hola hola"
    fill_in     "article[content]",       with: "lorem..."

    expect do
      click_on "Create Article"
    end.to change{ Article.count }.by(1)

    expect(current_path).to eql(admin_article_path(Article.last))

  end


end