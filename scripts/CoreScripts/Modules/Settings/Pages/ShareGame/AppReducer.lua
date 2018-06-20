local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local DeviceInfo = require(ShareGame.Reducers.DeviceInfo)
local Page = require(ShareGame.Reducers.Page)
local ConversationsSearch = require(ShareGame.Reducers.ConversationsSearch)
local PlaceInfos = require(ShareGame.Reducers.PlaceInfos)
local Users = require(ShareGame.Reducers.Users)
local Invites = require(ShareGame.Reducers.Invites)

return function(state, action)
	state = state or {}

	return {
		DeviceInfo = DeviceInfo(state.DeviceInfo, action),
		Users = Users(state.Users, action),
		Page = Page(state.Page, action),
		ConversationsSearch = ConversationsSearch(state.ConversationsSearch, action),
		PlaceInfos = PlaceInfos(state.PlaceInfos, action),
		Invites = Invites(state.Invites, action),
	}
end