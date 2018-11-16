class Pen < ApplicationRecord
  belongs_to :user
  belongs_to :nib

  validates :model, presence: true
  validates :lent_out, inclusion: { in: [true, false] }
end
