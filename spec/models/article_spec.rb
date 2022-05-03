require 'rails_helper'

RSpec.describe Article, type: :model do
  context "" do
    it "is valid with a title, body" do
      article = Article.new(title: "test title1", body: "testing body1")
      expect(article.title).to eq('test title1')
      expect(article.body).to eq('testing body1')
    end
    it "is invalid without a title" do
      article = Article.new(body: "testing body2")
      article.valid?
      expect(article.errors[:title]).to include("can't be blank")

    end
    it "is invalid without a body" do
      article = Article.new(title: "test title1")
      article.valid?
      expect(article.errors[:body]).to include("can't be blank")
      
    end
    it "is invalid without a title or body" do
      article = Article.new()
      article.valid?
      expect(article.errors[:body]).to include("can't be blank")
      expect(article.errors[:title]).to include("can't be blank")
      
    end
    it "is invalid with a duplicate title" do
      article = Article.new(title: "test title1", body: "testing body1")
      dupe = article.dup
      article.save
      dupe.save
      expect(dupe.errors[:title]).to include("has already been taken")
    end
  end
end

