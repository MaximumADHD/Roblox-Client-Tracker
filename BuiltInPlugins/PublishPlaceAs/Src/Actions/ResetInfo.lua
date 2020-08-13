local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)

local Action = require(script.Parent.Action)

local FFlagStudioLuaPublishFlowLocalizeUntitledGameText = game:GetFastFlag("StudioLuaPublishFlowLocalizeUntitledGameText")
local FFlagStudioPublishLuaWorkflow = game:GetFastFlag("StudioPublishLuaWorkflow")
local FFlagUXImprovementAddScrollToGamesPage = game:GetFastFlag("UXImprovementAddScrollToGamesPage")

return Action(script.Name, function(localizedDefaultname, isOverwritePublish)
    local CHOSEN_SCREEN = Constants.SCREENS.CHOOSE_GAME
    if FFlagUXImprovementAddScrollToGamesPage then
        CHOSEN_SCREEN = Constants.SCREENS.CHOOSE_GAME_WITH_SCROLL
    end
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
        screen = FFlagStudioPublishLuaWorkflow and isOverwritePublish and CHOSEN_SCREEN
            or Constants.SCREENS.CREATE_NEW_GAME,
	}
end)
