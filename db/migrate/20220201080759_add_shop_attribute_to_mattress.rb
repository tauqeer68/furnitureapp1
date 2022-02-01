class AddShopAttributeToMattress < ActiveRecord::Migration[7.0]
  def change
    add_column :mattresses, :shop, :string
  end
end
