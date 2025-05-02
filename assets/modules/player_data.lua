local PLAYER_DATA = {}

PLAYER_DATA.current_score = 0

PLAYER_DATA.ingredients = {
    herbs = 0,
    mushrooms = 0,
    flowers = 0
}

PLAYER_DATA.gathering_rates= {
    -- Base gathering rates for each ingredient
    herbs = {
        base_rate = 1,
        current_multiplier = 1
    },
    mushrooms = {
        base_rate = 1,
        current_multiplier = 1
    },
    flowers = {
        base_rate = 1,
        current_multiplier = 1
    }
}

return PLAYER_DATA