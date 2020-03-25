local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)

local Action = require(script.Parent.Action)

local FFlagStudioEnablePhoneAndTableDefault = game:GetFastFlag("StudioEnablePhoneAndTableDefault")

return Action(script.Name, function()
	return {
		placeInfo = { places = {}, parentGame = {}, },
        gameInfo = { games = {}, },
        groupInfo = { groups = {} },
        current = {},
        changed = {
            name = "Untitled Game",
            description = "",
            genre = Constants.GENRE_IDS[1],
            playableDevices = FFlagStudioEnablePhoneAndTableDefault and {Computer = true, Phone = true, Tablet = true,}
            or { Computer = true },
        },
        errors = {},
        publishInfo = { id = 0, name = "", parentGameName = "", parentGameId = 0, settings = {}, },
        isPublishing = false,
        screen = Constants.SCREENS.CREATE_NEW_GAME,
	}
end)
