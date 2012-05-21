class AddDetailsToTestones < ActiveRecord::Migration
  def change
    add_column :testones, :index_code, :string

    add_column :testones, :group_code, :string

  end
end
