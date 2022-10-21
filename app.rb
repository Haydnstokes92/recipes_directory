require_relative 'lib/recipe_repository'
require_relative 'lib/database_connection'


DatabaseConnection.connect('recipes_directory_test')

repo = RecipeRepository.new
recipes = repo.all
recipe_3 = repo.find(3)

puts 'all recipes:'
recipes.each do |recipe|
  p "#{recipe.id} - #{recipe.name} - #{recipe.cooking_time} - #{recipe.rating}"
end

puts 'recipe with id 3:'
puts "#{recipe_3.id} - #{recipe_3.name} - #{recipe_3.cooking_time} - #{recipe_3.rating}"
