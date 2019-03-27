require_relative '../config/environment'
require "pry"


# demo_data = dummy
# recipe_data = ApiCaller.get_recipe_by_id(578572)
# recipe = Recipe.create_from_data(recipe_data.body)

welcome
user = User.find_or_create_by(name: get_username)

loop do
  top_menu_banner
  list_selection_options
  user_selection = get_user_selection

  case user_selection
  when "find"
    finding_action(user)
  when "cook"
    cooking_actions(user)
  when "list"
    sysbanner("Shopping List")
    user.get_ingredient_list
    happy_shopping
  when "meals"
    meals_actions(user)
  when "exit"
    exit_banner
    break
  end
end
