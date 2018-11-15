require 'rails_helper'

RSpec.describe Pen, type: :model do
  # Association test
  it { should have_many(:inkings).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:company) }
  it { should validate_presence_of(:model) }
  it { should validate_presence_of(:lent_out) }
  # pending "add some examples to (or delete) #{__FILE__}"
end
