require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'returns a title and body of an article' do 
    article = build(:article)
    expect(article.title).to eq 'test title'
    expect(article.body).to eq 'testing my body'
  end

end
