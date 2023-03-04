class Food < ApplicationRecord
  # Asociaciones
  belongs_to :restaurant 

  # Active Record
  has_one_attached :photo
  
  # Validaciones
  validates :name, :description, :price, :available, presence: true
   
end
