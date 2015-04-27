class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
       
        t.string :name    
        t.integer :farmers_count
        t.integer :traders_count    
        
      t.timestamps null: false
    end
  end
end
