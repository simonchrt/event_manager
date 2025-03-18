FactoryBot.define do
  factory :event do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    date { Faker::Time.forward(days: 10) }
    location { Faker::Address.city }
    association :user
  end
end
