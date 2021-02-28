FactoryBot.define do
  factory :trainer do
    name { Faker::Name.name }
    age { Faker::Number.decimal_part(digits: 2) }
    gender { Faker::Gender.type }
  end
end
