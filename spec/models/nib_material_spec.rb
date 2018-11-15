require 'rails_helper'

RSpec.describe NibMaterial, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Association test
  it { should belong_to :pen }

  # Validation tests
  it { should validate_presence_of :material}
end
