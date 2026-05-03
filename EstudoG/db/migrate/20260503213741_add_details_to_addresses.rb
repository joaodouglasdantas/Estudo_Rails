class AddDetailsToAddresses < ActiveRecord::Migration[8.1]
  def change
    add_column :addresses, :number, :string
    add_column :addresses, :city, :string
  end
end
