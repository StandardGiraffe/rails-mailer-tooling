require 'rails_helper'

RSpec.describe Grind, type: :model do

  # Association tests

  # Validation tests
  it { should validate_presence_of(:name) }

end
