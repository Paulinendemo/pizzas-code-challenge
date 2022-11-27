# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "📃 Seeding data..."
Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

3.times do 
    Restaurant.create(name:Faker::Restaurant.name,
    address: Faker::Address.full_address)
end


10.times do
    ingredients = []
    3.times do
        ingredients <<Faker::Food.ingredient 
    end    
    Pizza.create(name:ingredients[1], ingredients:
    ingredients.join[", "])

end



one= RestaurantPizza.create(price: 10, pizza_id: 2, restaurant_id: 1)
two = RestaurantPizza.create(price: 3,pizza_id: 4, restaurant_id: 3)
three= RestaurantPizza.create(price: 5,pizza_id: 3, restaurant_id: 3)
four = RestaurantPizza.create(price: 4,pizza_id: 4, restaurant_id: 2)
five = RestaurantPizza.create(price:10,pizza_id: 5,restaurant_id:5)
six= RestaurantPizza.create(price: 3, pizza_id: 6, restaurant_id: 8)

puts "✅ Done seeding"