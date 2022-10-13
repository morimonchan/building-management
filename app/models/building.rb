class Building < ApplicationRecord

  with_options presence: true do

  validates :building_name    
  validates :address
  validates :building_detail   
  validates :user    
  
end

  validates :place_id, numericality: { other_than: 1, message: "を入力してください" }          

  belongs_to :user

end
