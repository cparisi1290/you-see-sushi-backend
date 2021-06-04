class CreateSushiRolls < ActiveRecord::Migration[6.1]
  def change
    create_table :sushi_rolls do |t|
      t.string :name, default: ""
      t.string :image, default: ""
      t.string :description, default: ""
      t.float :price, default: 0.0
      t.integer :order_id, default: ""

      t.timestamps
    end
  end
end
