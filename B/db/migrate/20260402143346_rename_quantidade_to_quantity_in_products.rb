class RenameQuantidadeToQuantityInProducts < ActiveRecord::Migration[8.1]
  def change
    rename_column :products, :quantidade, :quantity
  end
end