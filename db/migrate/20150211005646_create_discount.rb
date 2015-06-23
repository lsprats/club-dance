class CreateDiscount < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :title
      t.text :description
      t.integer :count
      t.datetime :date_ini
      t.datetime :date_end
      t.decimal :percent
    end
  end
end
