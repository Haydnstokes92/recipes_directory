require 'recipe_repository'

RSpec.describe RecipeRepository do

  def reset_recipes_table
    seed_sql = File.read('spec/seeds_recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_recipes_table
  end

  it 'returns all records' do
    repo = RecipeRepository.new

    recipes = repo.all

    expect(recipes.length).to eq 4

    expect(recipes.first.id).to eq '1'
    expect(recipes.first.name).to eq 'burger'
    expect(recipes.first.cooking_time).to eq '80'
    expect(recipes.first.rating).to eq '4'
  end

  it 'find a specific ID' do
    repo = RecipeRepository.new
    recipe_3 = repo.find(3)

    expect(recipe_3.id).to eq '3'
    expect(recipe_3.name).to eq 'hotdog'
    expect(recipe_3.cooking_time).to eq '45'
    expect(recipe_3.rating).to eq '3'
  
  end
end