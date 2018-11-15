require 'rails_helper'

RSpec.describe Nib, type: :model do

  # Association tests
  it { should belong_to(:grind) }
  it { should belong_to(:material) }

  # Validation tests

end
