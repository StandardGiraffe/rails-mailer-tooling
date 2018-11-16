require 'rails_helper'

RSpec.describe Pen, type: :model do

  # Association tests
  it { should belong_to(:user) }
  it { should belong_to(:nib) }

  # Validation tests
  it { should validate_presence_of(:model) }
  it { should validate_inclusion_of(:lent_out).in_array([true, false]) }
end
