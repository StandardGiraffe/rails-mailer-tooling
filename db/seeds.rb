# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pen.destroy_all
User.destroy_all
Nib.destroy_all
Material.destroy_all
Grind.destroy_all

10.times do
  User.create!([
    {
      email: Faker::Internet.email,
      password: Faker::Internet.password
    }
  ])
end
p "Created #{User.count} fake users."

Material.create!([
  {
    name: "Stainless Steel"
  },
  {
    name: "14k Gold"
  },
  {
    name: "18k Gold"
  },
  {
    name: "21k Gold"
  },
  {
    name: "Titanium"
  },
  {
    name: "23k Palladium"
  }
])
p "Created #{Material.count} records for different nib materials."

Grind.create!([
  {
    name: "Fine"
  },
  {
    name: "Medium"
  },
  {
    name: "Broad"
  },
  {
    name: "Double-Broad"
  },
  {
    name: "Stub"
  },
  {
    name: "Cursive Italic"
  },
  {
    name: "Right-Oblique"
  },
  {
    name: "Left-Oblique"
  },
  {
    name: "Semi-Flex"
  },
  {
    name: "Wet Noodle"
  }
])
p "Created #{Grind.count} records for different types of grinds."

10.times do
  Nib.create!([
  {
    grind_id: Grind.ids.sample,
    material_id: Material.ids.sample
  }
  ])
end
p "Created #{Nib.count} records for different specific nibs."

10.times do
  Pen.create!([
    {
      model: Faker::StarWars.character,
      lent_out: Faker::Boolean.boolean,
      nib_id: Nib.ids.sample,
      user_id: User.ids.sample
    }
  ])
end
p "Created #{Pen.count} finished pens."
