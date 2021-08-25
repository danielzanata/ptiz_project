require 'faker'
FactoryBot.define do
  factory :user, class: User do
    name        { Faker::Lorem.word }
    cpf         { Faker::PhoneNumber.subscriber_number(length: 13) }
    email       { Faker::Internet.free_email }
  end
end
