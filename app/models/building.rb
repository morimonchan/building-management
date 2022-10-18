class Building < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :place

  with_options presence: true do
  validates :building_name    
  validates :address
  validates :building_detail   
  end
  validates :place_id, numericality: { other_than: 1, message: "を入力してください" }          

  belongs_to :user
  has_one    :parking

  has_one_attached :image



end
