class Schedule < ApplicationRecord
  # Asociaciones
  belongs_to :restaurant

  # Validaciones
  validates :open_at, :close_at, presence: true
  validates :restaurant_id, uniqueness: {scope: :day, message: "Este día ya está agregado"}

  # Enum
  enum :day, {
     lunes: 1,
     martes: 2,
     miércoles: 3,
     jueves: 4,
     viernes: 5,
     sábado: 6,
     domingo: 7
  }

end
