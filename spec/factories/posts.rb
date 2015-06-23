FactoryGirl.define do

  factory :post do
    title { Faker::Name.title }
    description { Faker::Lorem.sentence(2, true, 6) }
    content { Faker::Lorem.sentence(10, true, 25) }
  end

end
