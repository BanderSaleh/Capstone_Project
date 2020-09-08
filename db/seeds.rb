# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "test@test.com", password: "password")

Product.create!([
  {store_name: "Safeway", product_name: "Buttermilk Bread", quantity: 2, price: 5, deadline: "Wednesday", store_notes: "none", status: "Carted", store_notes_timestamp: "2020-09-01 none", timestamp: "2020-09-01", picture: "https://www.kroger.com/product/images/xlarge/front/0007313000125", user_id: user.id},
  {store_name: "Safeway", product_name: "Strawberries", quantity: 1, price: 5, deadline: "Wednesday", store_notes: "none", status: "Carted", timestamp: "2020-09-01", store_notes_timestamp: "2020-09-01 none", picture: "https://d2d8wwwkmhfcva.cloudfront.net/800x/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_48656b8f-d527-4e26-b24a-aa2bbba83b35.png"},
])


