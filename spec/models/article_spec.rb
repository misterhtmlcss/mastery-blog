require "rails_helper"

RSpec.describe Article, type: :model do
  context "validation tests" do
  # let(:article) { build(:article) }
    it 'returns a title and body of an article' do 
      article = FactoryBot.build(:article)
      expect(article).to be_valid
    end
    
  end

end
