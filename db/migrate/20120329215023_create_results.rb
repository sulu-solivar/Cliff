class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :user_id
      t.text :item_order
      t.integer :test_num

      t.timestamps
    end
  end
end
