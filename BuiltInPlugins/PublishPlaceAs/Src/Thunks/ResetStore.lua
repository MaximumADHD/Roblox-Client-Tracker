local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)

local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)

return function()
	return function(store)
		store:dispatch(SetScreen(Constants.SCREENS.CREATE_NEW_GAME))
		store:dispatch(SetPlaceInfo(nil))
		store:dispatch(SetGameInfo(nil))
	end
end
