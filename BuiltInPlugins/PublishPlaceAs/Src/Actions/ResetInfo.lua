local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)

local Action = require(script.Parent.Action)

local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations

local optInLocations
if shouldShowDevPublishLocations() then
	optInLocations = {}
end

return Action(script.Name, function(localizedDefaultName, isOverwritePublish)
	local initialScreen = Constants.SCREENS.CREATE_NEW_GAME
	if isOverwritePublish then
		initialScreen = Constants.SCREENS.CHOOSE_GAME
	end

	return {
		placeInfo = { places = {}, parentGame = {} },
		gameInfo = { games = {} },
		groupInfo = { groups = {} },
		current = {},
		changed = {
			name = localizedDefaultName,
			description = "",
			genre = Constants.GENRE_IDS[1],
			playableDevices = { Computer = true, Phone = true, Tablet = true },
			OptInLocations = optInLocations,
		},
		errors = {},
		publishInfo = { id = 0, name = "", parentGameName = "", parentGameId = 0, settings = {} },
		isPublishing = false,
		screen = initialScreen,
	}
end)
