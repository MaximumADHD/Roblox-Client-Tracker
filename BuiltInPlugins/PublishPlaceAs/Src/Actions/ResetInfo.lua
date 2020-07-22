local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)

local Action = require(script.Parent.Action)

local FFlagStudioLuaPublishFlowLocalizeUntitledGameText = game:GetFastFlag("StudioLuaPublishFlowLocalizeUntitledGameText")
local FFlagStudioPublishLuaWorkflow = game:GetFastFlag("StudioPublishLuaWorkflow")

return Action(script.Name, function(localizedDefaultname, isOverwritePublish)
	return {
		placeInfo = { places = {}, parentGame = {}, },
        gameInfo = { games = {}, },
        groupInfo = { groups = {} },
        current = {},
        changed = {
            name = FFlagStudioLuaPublishFlowLocalizeUntitledGameText and localizedDefaultname or "Untitled Game",
            description = "",
            genre = Constants.GENRE_IDS[1],
            playableDevices = {Computer = true, Phone = true, Tablet = true,},
        },
        errors = {},
        publishInfo = { id = 0, name = "", parentGameName = "", parentGameId = 0, settings = {}, },
        isPublishing = false,
        screen = FFlagStudioPublishLuaWorkflow and isOverwritePublish and Constants.SCREENS.CHOOSE_GAME
            or Constants.SCREENS.CREATE_NEW_GAME,
	}
end)
