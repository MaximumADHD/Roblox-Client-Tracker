local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)

local SetScreen = require(Plugin.Src.Actions.SetScreen)
local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)
local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)
local SetGroupInfo = require(Plugin.Src.Actions.SetGroupInfo)

return function()
	return function(store)
		store:dispatch(SetScreen(Constants.SCREENS.CREATE_NEW_GAME))
		store:dispatch(SetPlaceInfo({ places = {} }))
		store:dispatch(SetGameInfo({ games = {} }))
		store:dispatch(SetPublishInfo({ id = 0, name = "", parentGameName = "" }))
		store:dispatch(SetGroupInfo({ groups = {} }))
	end
end
