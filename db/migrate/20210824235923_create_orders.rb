class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :user_device, null:false
      t.string :imei_device, null:false
      t.float :annual_price, null:false
      t.integer :number_installments
      t.references :user, foreign_key: true, null:false

      t.timestamps
    end
  end
end
