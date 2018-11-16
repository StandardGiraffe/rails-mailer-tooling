FactoryBot.define do
  factory :pen do
    model { Faker::StarWars.character }
    lent_out { Faker::Boolean.boolean }
    nib_id { Nib.ids.sample }
    user_id { User.ids.sample }
  end
end