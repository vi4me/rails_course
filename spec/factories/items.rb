FactoryBot.define do
  factory :item do
    price { rand 20...100 }
    name  { Faker::Lorem.word.downcase }
    real { [true, false].sample }
    weight { rand 20...100 }
    description { Faker::Lorem.word.downcase }
  end
end
