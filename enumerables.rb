require 'pry'



def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


def get_names(spicy_foods)
  spicy_foods.map do |spicy_food|
    spicy_food[:name]
  end
end


def spiciest_foods(spicy_foods)
  spicy_foods.filter do |spicy_food|
    spicy_food[:heat_level] > 5
  end
end


def print_spicy_foods(spicy_foods)
  spicy_foods.each do |spicy_food|
    puts "#{spicy_food[:name]} (#{spicy_food[:cuisine]}) | Heat Level: #{'🌶' * spicy_food[:heat_level]}"
  end
end


def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |spicy_food|
    spicy_food[:cuisine] == cuisine
  end
end


def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |spicy_food|
    spicy_food[:heat_level]
  end
end


def print_spiciest_foods(spicy_foods)
  spiciest = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest) 
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total_heat_level = 0 
  spicy_foods.each do |spicy_food|
    total_heat_level += spicy_food[:heat_level]
  end
  total_heat_level / spicy_foods.length
end
