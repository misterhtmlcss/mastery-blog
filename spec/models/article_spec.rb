require "rails_helper"

RSpec.describe Article, type: :model do
  context "validation tests" do
    let(:article) { build(:article) }
    it 'returns a title and body of an article' do 
      article.title = nil
      expect(article.save).to eq(false)
      # expect(article.title).to eq 'test title'
      # expect(article.body).to eq 'testing my body'
    end
    
  end

end
