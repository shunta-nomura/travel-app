FactoryBot.define do
  factory :memorie do
    description {Faker::Lorem.sentence}
    prefecture_id { Faker::Number.within(range: 1..47) }
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
