class CreateTalukas < ActiveRecord::Migration
  def change
    create_table :talukas do |t|

         
        t.string :name
        t.integer :district_id
        t.integer :farmers_count
        t.integer :traders_count    
      t.timestamps null: false
    end
  end
end
