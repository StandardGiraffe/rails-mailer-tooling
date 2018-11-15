require 'rails_helper'

RSpec.describe NibType, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # Association test
  it { should belong_to :pen }

  # Validation tests
  it { should validate_presence_of :nib}

end
