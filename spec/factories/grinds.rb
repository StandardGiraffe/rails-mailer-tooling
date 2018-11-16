grinds = ["Fine", "Medium", "Broad", "Double-Broad", "Stub", "Cursive Italic", "Right-Oblique", "Left-Oblique", "Semi-Flex", "Wet Noodle"]

FactoryBot.define do
  factory :grind do
    name { grinds.sample }
  end
end