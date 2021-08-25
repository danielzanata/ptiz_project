require 'faker'
FactoryBot.define do
  factory :order, class: Order do
    user_device           { Faker::Device.model_name }
    imei_device           { Faker::Device.serial }
    annual_price          { Faker::Commerce.price }
    number_installments   { Faker::Device.build_number }
    user_id               { FactoryBot.create(:user).id }
  end
end