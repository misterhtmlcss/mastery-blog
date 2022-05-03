require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validation tests" do
    it "is valid with valid attributes" do
      expect(Article.new).to be_valid
    end
    
    it "accepts title and body" do
      article = Article.create(title: "test", body: "testing")
      expect(article.title).to eq("test")
      expect(article.body).to eq("testing")
    end
  end
end


