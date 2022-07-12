FactoryBot.define do
  factory :condition do
    name { Faker::Games::DnD.alignment }
    description { Faker::Lorem.paragraph }
  end
end
