class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :customer_id
      t.integer :holiday_id

      t.timestamps
    end
  end
end
