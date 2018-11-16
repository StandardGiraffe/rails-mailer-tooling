FactoryBot.define do
  factory :nib do
    grind_id {Grind.ids.sample}
    material_id { Material.ids.sample }
  end
end