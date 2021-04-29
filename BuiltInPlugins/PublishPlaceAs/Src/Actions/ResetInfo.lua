local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)

local Action = require(script.Parent.Action)

return Action(script.Name, function(localizedDefaultName, isOverwritePublish)
    local CHOSEN_SCREEN = Constants.SCREENS.CHOOSE_GAME
	return {
		placeInfo = { places = {}, parentGame = {}, },
        gameInfo = { games = {}, },
        groupInfo = { groups = {} },
        current = {},
        changed = {
            name = localizedDefaultName,
            description = "",
            genre = Constants.GENRE_IDS[1],
            playableDevices = {Computer = true, Phone = true, Tablet = true,},
        },
        errors = {},
        publishInfo = { id = 0, name = "", parentGameName = "", parentGameId = 0, settings = {}, },
        isPublishing = false,
        -- ternary expression if isOverwritePublish return CHOSEN_SCREEN else return Constants.SCREENS.CREATE_NEW_GAME
        screen = isOverwritePublish and CHOSEN_SCREEN or Constants.SCREENS.CREATE_NEW_GAME,
	}
end)
