class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :string

    add_column :users, :highest_education, :string

    add_column :users, :years_in_business, :string

    add_column :users, :founded_company, :boolean

    add_column :users, :raised_capital, :boolean

    add_column :users, :pitched_to_investors, :boolean

  end
end
