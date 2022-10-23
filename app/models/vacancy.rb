class Vacancy < ApplicationRecord

  with_options presence: true do
    validates :room_number    
    validates :deadline
    validates :floor_plan  
    validates :deposit  
    validates :rent  
    validates :service_fee
    validates :membership_fee  
    end

  belongs_to :building
  has_one_attached :image

end
