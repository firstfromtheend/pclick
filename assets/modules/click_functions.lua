local player_data = require('assets.modules.player_data')

local CLICK_FUNC = {}

CLICK_FUNC.button_animate = false

function CLICK_FUNC.add_point()
    player_data.current_score = player_data.current_score + 1
end

function CLICK_FUNC.click_made()
    CLICK_FUNC.add_point()
    print("click_made")
end



function CLICK_FUNC.get_current_score()
    return player_data.current_score
end

return CLICK_FUNC