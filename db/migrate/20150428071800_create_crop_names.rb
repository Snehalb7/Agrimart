class CreateCropNames < ActiveRecord::Migration
  def change
    create_table :crop_names do |t|

        t.string :name
        t.integer :crop_category_id
        t.integer :posts_count
        t.timestamps null: false
    end
  end
end
