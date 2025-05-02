local PLAYER_DATA = {}

PLAYER_DATA.current_score = 0

PLAYER_DATA.ingredients = {
    ['mushroom'] = 0,
    ['herbs'] = 0,
    ['flower'] = 0
}

PLAYER_DATA.gathering_rates= {
    -- Base gathering rates for each ingredient
    ['mushroom'] = {
        base_rate = 0.5,
        rate_multiplier = 1.07,
        level = 1,
        price_for_upgrade = 0,
        base_price = 15,
        price_multiplier = 1.15,
        current_income = 0.5,
        max_level = 100
    },
    ['herbs'] = {
        base_rate = 0.1,
        rate_multiplier = 1.07,
        level = 0,
        price_for_upgrade = 0,
        base_price = 100,
        price_multiplier = 1.15,
        current_income = 0,
        max_level = 100
    },
    ['flower'] = {
        base_rate = 4,
        rate_multiplier = 1.07,
        level = 0,
        price_for_upgrade = 0,
        base_price = 500,
        price_multiplier = 1.15,
        current_income = 0,
        max_level = 100
    }
}

return PLAYER_DATA