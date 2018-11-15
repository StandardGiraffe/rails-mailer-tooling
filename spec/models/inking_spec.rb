require 'rails_helper'

RSpec.describe Inking, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Association test
  it { should belong_to(:pen) }

  # Validation tests
  it {should validate_presence_of(:ink_company) }
  it {should validate_presence_of(:ink_name) }
  it {should validate_presence_of(:date_inked) }
  it {should validate_presence_of(:currently_inked) }
end
