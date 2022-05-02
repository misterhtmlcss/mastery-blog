FactoryBot.define do
  # factory :article do
  #   title { "test title" }
  #   body { "testing my body" }
  # end
  
  factory :article do
    title { Faker::Lorem.words(number: 4) }
    body { Faker::Lorem.words(number: 14) }
  end

  

  
end
