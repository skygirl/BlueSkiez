class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :cust_id
      t.string :SaleType
      t.date :sale_date
      t.float :gear_rental
      t.float :Sale_price
      t.integer :bo_load_num

      t.timestamps
    end
  end
end
