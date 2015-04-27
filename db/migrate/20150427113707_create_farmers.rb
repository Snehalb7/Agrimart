class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|

        t.string :name
        t.string :email
        t.string :password_hash
        t.string :password_salt
        t.integer :district_id
        t.integer :taluka_id
        t.integer :pincode
        t.string :address
        t.string :phone_no
        
      t.timestamps null: false
    end
  end
end
