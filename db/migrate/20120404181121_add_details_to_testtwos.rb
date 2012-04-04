class AddDetailsToTesttwos < ActiveRecord::Migration
  def change
    add_column :testtwos, :index_code, :string

    add_column :testtwos, :group_code, :string

  end
end
