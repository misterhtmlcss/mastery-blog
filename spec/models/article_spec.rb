require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validation tests" do
    
    it "accepts title and body" do
      article = Article.create(title: "test", body: "testing")
      expect(article.title).to eq("test")
      expect(article.body).to eq("testing")
    end
  end
end

