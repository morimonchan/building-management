class CreateParkings < ActiveRecord::Migration[6.0]
  def change
    create_table :parkings do |t|


      t.integer :parking_number, null: false   
      t.integer :price,   null: false   
      t.text :parking_detail,  null: false    
      t.references :building,  null: false, foreign_key: true            
      t.timestamps
    end
  end
end
