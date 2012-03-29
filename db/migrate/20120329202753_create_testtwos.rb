class CreateTesttwos < ActiveRecord::Migration
  def change
    create_table :testtwos do |t|
      t.text :item

      t.timestamps
    end
  end
end
