FactoryBot.define do
  factory :registration do
    association :user
    association :event
    status { "pending" }
  end
end
