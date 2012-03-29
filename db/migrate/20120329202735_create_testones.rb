class CreateTestones < ActiveRecord::Migration
  def change
    create_table :testones do |t|
      t.text :item

      t.timestamps
    end
  end
end
