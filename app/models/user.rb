class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name,       presence: true
  validates :employee_number,    presence: true

   
  has_many :buildings
  # has_many :comments


end
