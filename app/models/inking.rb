class Inking < ApplicationRecord
  # Associations
  belongs_to :pen

  # Validations
  validates_presence_of :ink_company, :ink_name, :date_inked, :currently_inked
end
