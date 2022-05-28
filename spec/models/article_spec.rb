require 'rails_helper'

RSpec.describe Article, type: :model do
  
  context "model title and body presence checks" do
    it "is valid with a title, body" do
      article = Article.new(title: "test title1", body: "testing body1")
      expect(article).to be_valid
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
  end

  context "model uniqueness checks" do
    let(:article) { Article.new(title: "test title", body: "testing body1") }
    it "is invalid with a non-unique title" do
      dupe = article.dup
      article.save
      dupe.valid?
      expect(dupe.errors[:title]).to include("has already been taken")
    end
    
    it "is invalid with a non-unique body" do
      dupe = article.dup
      article.save
      dupe.valid?
      expect(dupe.errors[:body]).to include("has already been taken")
    end
  end
    
  context "model case sensitivity checks" do
    it "is not case sensitive" do
      article1 = Article.new(title: "test title1", body: "testing body1")
      article2 = Article.new(title: "Test Title1", body: "Testing Body1")
      
      article1.save
      article2.valid?
      
      expect(article2.errors[:body]).to include("has already been taken")
    end
  end

  context "model minimum character length checks" do
    it 'is valid when the title is atleast 6 characters long' do
      article = Article.new(title: "This title is longer than 6 chars", body: "this is the Articles body")
  
      expect(article).to be_valid
    end
  
    it 'is invalid when the title is less than 6 characters long' do
      article = Article.new(title: "tiny", body: "this is the Articles body")
  
      expect(article).to_not be_valid
      expect(article.errors[:title]).to include("is too short (minimum is 6 characters)")
    end
  
    it 'is valid when the body is atleast 10 characters long' do
      article = Article.new(title: "This is the title", body: "this Articles body is more than 10 chars long")
  
      expect(article).to be_valid
    end
  
    it 'is invalid when the body is less than 10 characters long' do
      article = Article.new(title: "This is the title", body: "body")
  
      expect(article).to_not be_valid
      expect(article.errors[:body]).to include("is too short (minimum is 10 characters)")
    end
  end
  
end

