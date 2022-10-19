class Parking < ApplicationRecord

  with_options presence: true do
    validates :parking_number    
    validates :parking_fee
    validates :parking_detail  
    end
  
belongs_to :building
has_one_attached :image
end
