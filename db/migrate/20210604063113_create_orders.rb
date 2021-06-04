class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :total, default: 0.0

      t.timestamps
    end
  end
end
