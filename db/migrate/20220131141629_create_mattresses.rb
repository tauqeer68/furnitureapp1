class CreateMattresses < ActiveRecord::Migration[7.0]
  def change
    create_table :mattresses do |t|
      t.string :mattress_name

      t.timestamps
    end
  end
end
