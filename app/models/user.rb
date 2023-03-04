class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Asociaciones
  has_many :restaurants
  # 0,1 o muchos

  # Active Record
  has_one_attached :photo
  
end
