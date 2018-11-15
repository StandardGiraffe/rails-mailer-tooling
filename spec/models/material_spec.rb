require 'rails_helper'

RSpec.describe Material, type: :model do

  # Association tests

  # Validation tests
  it { should validate_presence_of(:name) }

end
