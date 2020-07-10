# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


restaurant = Restaurant.create(name: "Zinburger", location: "Paramus, NJ")
restaurant_two = Restaurant.create(name: "Bobby's Burger Palace", location: "Paramus, NJ")

burger = Burger.create(restaurant_id: 1, name: "Zinburger", description: "Manchego Cheese, Zinfandel Braised Onions, Lettuce & Mayo", price: 12.00)
burger_two = Burger.create(restaurant_id: 1, name: "Samburger", description: "Applewood Smoked Bacon, American Cheese, Lettuce & 1,000 Island", price: 12.50)

burger_three = Burger.create(restaurant_id: 2, name: "Bobby Blue Bacon", description: "Blue cheese, bacon, lettuce, tomato", price: 9.75)
burger_four = Burger.create(restaurant_id: 2, name: "L.A.", description: "Avocado relish, watercress, cheddar cheese, tomato", price: 9.50)