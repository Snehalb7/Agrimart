class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|

        t.integer :post_id
        t.integer :tarder_id
        t.string :title
        t.integer :quantity
        t.integer :bid_price
        
        t.timestamps null: false
    end
  end
end
