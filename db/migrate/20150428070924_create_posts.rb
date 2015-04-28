class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
        
      t.integer :farmer_id    
      t.string :title
      t.integer :crop_name_id
      t.integer :crop_category_id
      t.integer :quantity
      t.integer :price
      t.string :status
      t.integer :image_id
      t.integer :requests_count    

      t.timestamps null: false
    end
  end
end
