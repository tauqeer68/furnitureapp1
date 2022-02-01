class AddShopNameAttributeToMattress < ActiveRecord::Migration[7.0]
  def change
    add_column :mattresses, :shop_name, :string
  end
end
