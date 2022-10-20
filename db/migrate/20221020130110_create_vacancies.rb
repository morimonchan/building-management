class CreateVacancies < ActiveRecord::Migration[6.0]
  def change
    create_table :vacancies do |t|

      t.integer :room_number, null: false     
      t.date :deadline, null: false     
      t.string :floor_plan,     null: false    
      t.integer :deposit,  null: false     
      t.integer :rent,  null: false     
      t.integer :service_fee,  null: false     
      t.integer :membership_fee,  null: false 
      t.references :building,  null:false, foreign_key: true

      t.timestamps
    end
  end
end
