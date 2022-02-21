# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

superpowers = Power.create([
  {name: "Teleportation", description: "Teleportation is the transfer of matter or energy from one point to another without traversing the physical space between them."},
  {name: "Invisibility", description: "Always keep in mind that turning invisible doesn't necessarily mean that your character's clothes will be invisible. If your character has permanent invisibility, then they really don't need clothes at all (unless they want to be seen)"},
  {name: "Time Travel", description: "This is the ability to travel to the past or future from the present. Keep in mind that your story can get really confusing to the audience whenever the power of traveling through time makes an appearance. Plan carefully."},
  {name: "Phasing", description: "The ability to pass through solid objects can be one of the most useful superpowers a person can have. Let's just hope that they know how to avoid reconstituting themselves inside the object they're passing through."},
  {name: "Shape Shifting", description: "This refers to the ability to change one's physical appearance. Some shifters can change into anything, even tiny inanimate objects, while others can only shapeshift (or copy) things or people they've actually seen."}
  ])
