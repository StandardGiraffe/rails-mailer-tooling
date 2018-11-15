class NibType < ApplicationRecord
  belongs_to :pen

  validates_presence_of :nib
end
