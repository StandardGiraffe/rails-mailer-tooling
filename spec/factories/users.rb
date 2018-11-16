FactoryBot.define do
  factory :user do
    email {
      "%s+%d@%s" % [
      Faker::Dessert.topping.tr(" ", "_").downcase,
      SecureRandom.rand(10000..99999),
       "example.com" ] }
    password { Faker::Internet.password }
  end
end

# I'm trying to figure out what's whacked out with my tests.  I was thinking I needed some of these fields to be entered, but in general, I think there's an unexpected interaction between Devise and the tutorial procedure that's borking things.