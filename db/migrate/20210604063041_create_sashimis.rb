class CreateSashimis < ActiveRecord::Migration[6.1]
  def change
    create_table :sashimis do |t|
      t.string :name, default: ""
      t.string :image, default: ""
      t.string :description, default: ""
      t.float :price, default: 0.0
      t.integer :order_id, default: ""

      t.timestamps
    end
  end
end
