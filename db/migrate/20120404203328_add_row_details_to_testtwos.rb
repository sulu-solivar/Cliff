class AddRowDetailsToTesttwos < ActiveRecord::Migration
  def change
    add_column :testtwos, :row_number, :integer

  end
end
