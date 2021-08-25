class Order < ApplicationRecord
  belongs_to :user
  validates_presence_of :user_device, :imei_device, :annual_price, :user
end
