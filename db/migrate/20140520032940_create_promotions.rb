class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :Description
      t.string :ImagePath
      t.date :StartDate
      t.date :EndDate

      t.timestamps
    end
  end
end
