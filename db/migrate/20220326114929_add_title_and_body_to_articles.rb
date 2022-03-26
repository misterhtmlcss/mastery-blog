class AddTitleAndBodyToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :title, :string
    add_column :articles, :body, :string
  end
end
