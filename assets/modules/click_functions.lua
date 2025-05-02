local player_data = require('assets.modules.player_data')

local CLICK_FUNC = {}

CLICK_FUNC.button_animate = {
    ['mushroom'] = false,
    ['herbs'] = false,
    ['flower'] = false
}

function CLICK_FUNC.add_point(node_name)
    player_data.ingredients[node_name] = player_data.ingredients[node_name] + 
    player_data.gathering_rates[node_name].current_income
end

function CLICK_FUNC.make_upgrade(node_name)
    -- add states for 0 level upgrade and max level upgrades
    player_data.gathering_rates[node_name].level = player_data.gathering_rates[node_name].level + 1
    player_data.gathering_rates[node_name].current_income = player_data.gathering_rates[node_name].base_rate * 
    (player_data.gathering_rates[node_name].rate_multiplier ^ player_data.gathering_rates[node_name].level)
    player_data.gathering_rates[node_name].price_for_upgrade = player_data.gathering_rates[node_name].base_price * 
    (player_data.gathering_rates[node_name].price_multiplier ^ player_data.gathering_rates[node_name].level)
end

function CLICK_FUNC.get_current_score()
    return player_data.ingredients
end

return CLICK_FUNC