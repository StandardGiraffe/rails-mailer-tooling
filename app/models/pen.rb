class Pen < ApplicationRecord
  belongs_to :user
  belongs_to :nib

  validates_presence_of :model, :lent_out
end
