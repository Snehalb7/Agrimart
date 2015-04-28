class CreateCropCategories < ActiveRecord::Migration
  def change
    create_table :crop_categories do |t|

        t.string :name
        t.integer :posts_count
        t.timestamps null: false
    end
  end
end
