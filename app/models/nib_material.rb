class NibMaterial < ApplicationRecord
  belongs_to :pen

  validates_presence_of :material
end
