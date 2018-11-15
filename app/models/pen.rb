class Pen < ApplicationRecord

  # Associations
  has_many :inkings, dependent: :destroy

  # Validations
  validates_presence_of :company, :model, :lent_out

end
