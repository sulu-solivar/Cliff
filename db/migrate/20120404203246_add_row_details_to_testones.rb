class AddRowDetailsToTestones < ActiveRecord::Migration
  def change
    add_column :testones, :row_number, :integer

  end
end
