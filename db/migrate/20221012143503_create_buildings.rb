class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|

      t.string :building_name,    null: false          
      t.integer :place_id,     null: false        
      t.string  :address,   null: false           
      t.text    :building_detail, null: false         
      t.references :user,        null:false, foreign_key: true
      
    
      t.timestamps

      belongs_to :user
      has_one_attached :image


    end
  end
end
