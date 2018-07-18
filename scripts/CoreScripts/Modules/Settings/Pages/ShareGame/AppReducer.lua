local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local PlaceInfos = require(AppTempCommon.LuaChat.Reducers.PlaceInfos)
local Users = require(AppTempCommon.LuaApp.Reducers.Users)

local ConversationsSearch = require(ShareGame.Reducers.ConversationsSearch)
local DeviceInfo = require(ShareGame.Reducers.DeviceInfo)
local Page = require(ShareGame.Reducers.Page)

local Invites = require(ShareGame.Reducers.Invites)

return function(state, action)
	state = state or {}

	return {
		ConversationsSearch = ConversationsSearch(state.ConversationsSearch, action),
		DeviceInfo = DeviceInfo(state.DeviceInfo, action),
		Invites = Invites(state.Invites, action),
		Page = Page(state.Page, action),
		PlaceInfos = PlaceInfos(state.PlaceInfos, action),
		Users = Users(state.Users, action),
	}
end