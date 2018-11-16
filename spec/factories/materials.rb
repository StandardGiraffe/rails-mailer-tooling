materials = ["Stainless Steel", "14k Gold", "18k Gold", "21k Gold", "Titanium", "23k Palladium"]

FactoryBot.define do
  factory :material do
    name { materials.sample }
  end
end