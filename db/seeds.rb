# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Booking.destroy_all
Power.destroy_all

file = File.open(Rails.root.join("db/images/speed.png"))
power_speed = Power.create(name: "Speed", description: "Users can move much faster than the average member of their species, beyond what can be emulated via natural training and with little to no maintaining. However, this power is not without any ill effects, as it can strain the body, although some users may be resistant or even immune to the effects of high-speed travel, including acceleration, friction, g-force, inertia, etc. They are able to run from about 64-193 kph which means they can reach subsonic speeds.")
power_speed.photo.attach(io: file, filename: 'speed.png', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/strength.jpeg"))
power_strength = Power.create(name: "Strength", description: "Users possess a level of strength beyond that of the peak members of their specie and usually in their Verse. At base level, users would be able to lift heavy objects such as cars, large boulders, vans, and most other objects that are bigger than them in size. They would also be able to exert great physical force from various parts of their body (prominently through their hands), sending enemies flying through walls or breaking their bones instantly with a single punch.")
power_strength.photo.attach(io: file, filename: 'strength.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/invisibility.png"))
power_invisibility = Power.create(name: "Invisibility", description: "Users can render themselves unseen by the naked eye and become invisible in visible spectrum. The user can move about an environment unseen by others and act without being observed. Some users can choose to let certain people see them, while staying invisible to others.")
power_invisibility.photo.attach(io: file, filename: 'invisibility.png', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/shapeshifting.jpg"))
power_shape_shifting = Power.create(name: "Shape Shifting", description: "Users can shapeshift, changing their form and appearance at will, maybe even transforming and reshaping themselves down to their genetic and cellular structure. They can impersonate others or enhance their own body for combat, either by turning into animals, humanoids, monsters, etc. or by making the body stronger.")
power_shape_shifting.photo.attach(io: file, filename: 'shapeshifting.jpg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/teleportation.jpeg"))
power_teleportation = Power.create(name: "Teleportation", description: "The users can teleport; moving instantaneously from one location to another without physically occupying the space in between or transfer matter (beings/objects, including themselves) or energy from one point to another without traversing the physical space between them. This can be achieved by various means, including causing the atoms/molecules to travel at light-speed, warping the space, or use quantum superposition, in which the user teleports by spatially rearranging the subatomic contents of a system.")
power_teleportation.photo.attach(io: file, filename: 'teleportation.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/x-ray-vision.jpeg"))
power_x_ray_vision = Power.create(name: "X-Ray Vision", description: "The user can see x-rays, electromagnetic waves of high energy and very short wavelength, which is able to pass through many materials opaque to light. This can be used for medical purposes such as the detection of cancers, tumors, blackened lungs, etc. The skill of perceiving a specific location (i.e. artery) is given by partial reflection of the ray from each specific surface surveyed.")
power_x_ray_vision.photo.attach(io: file, filename: 'x-ray-vision.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/magic.jpeg"))
power_magic = Power.create(name: "Magic", description: "Users are able to utilize magic, the use of rituals, symbols, action, gestures, language, etc., to exploit supernatural forces to varying degrees, with only their skill, personal power-level, imagination/knowledge, and/or morality to define the borders. Given the flexibility of magic and their ability to transcend logic, laws, and common sense, its users have essentially limitless possibilities for what they can accomplish and achieve, capable of altering reality through their gifts.")
power_magic.photo.attach(io: file, filename: 'magic.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/fire.webp"))
power_fire = Power.create(name: "Fire Manipulation", description: "Users can create, shape, control, generate and manipulate every form/type of fire, the rapid oxidation of a material in the exothermic chemical process of combustion, releasing heat, light, and various reaction products, flame being the visible portion of the fire. Depending on the substances alight, and any impurities outside, the color of the flame and the fire's intensity will be different. The user can also completely control the temperature of the fire at will.")
power_fire.photo.attach(io: file, filename: 'fire.webp', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/freezing.jpeg"))
power_freezing = Power.create(name: "Freezing", description: "The user can reduce the kinetic energy of atoms meaning they effectively make things colder, ranging from slightly chilly levels to absolute zero.")
power_freezing.photo.attach(io: file, filename: 'freezing.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/persuasion.jpeg"))
power_persuasion = Power.create(name: "Persuasion", description: "The user can compel people by speaking, the victims are unable to disobey; the seemingly cogent commandment is far too compelling. At a high level, users can persuade people into hurting/killing themselves or even flip around sense of logic, but can never cause victims to achieve what they are not capable of (ex. Flight).")
power_persuasion.photo.attach(io: file, filename: 'persuasion.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/earth-manipulation.jpeg"))
power_earth = Power.create(name: "Earth Manipulation", description: " Users can create, shape and manipulate earth and earthen elements including most solid objects, specifically all minerals and mineral compositions regardless of their state (mountain, boulder, sand or dust), dirt, soil, etc. More advanced users can manipulate metals such as iron, copper and titanium.")
power_earth.photo.attach(io: file, filename: 'earth-manipulation.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/gravity-manipulation.jpeg"))
power_gravity = Power.create(name: "Gravity Manipulation", description: "Users can create, shape, move, control, interact and manipulate gravity, a natural phenomenon which all things with mass or energy — including planets, stars, galaxies, and light — attract (or gravitate toward) one another.")
power_gravity.photo.attach(io: file, filename: 'gravity-manipulation.jpeg', content_type: 'image/png')
file = File.open(Rails.root.join("db/images/energy-blast.jpeg"))
power_energy = Power.create(name: "Energy Blast", description: "The user can release energy over a specific target area causing great damage and/or delivering great shock waves of pure force.")
power_energy.photo.attach(io: file, filename: 'energy-blast.jpeg', content_type: 'image/png')
