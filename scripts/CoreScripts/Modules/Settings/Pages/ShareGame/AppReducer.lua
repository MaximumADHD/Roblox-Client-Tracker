--!nonstrict
local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local dependencies = require(ShareGame.dependencies)

local PlaceInfos = require(CorePackages.Workspace.Packages.PlaceInfoRodux).Reducers.PlaceInfosReducer
local Users = require(CorePackages.Workspace.Packages.UserLib).Reducers.UserReducer
local Friends = require(AppTempCommon.LuaApp.Reducers.Friends)
local FriendCount = require(AppTempCommon.LuaChat.Reducers.FriendCount)

local ConversationsSearch = require(ShareGame.Reducers.ConversationsSearch)
local DeviceInfo = require(ShareGame.Reducers.DeviceInfo)
local Invites = require(ShareGame.Reducers.Invites)
local GameInfo = require(ShareGame.Reducers.GameInfo)
local Page = require(ShareGame.Reducers.Page)
local Toasts = require(ShareGame.Reducers.Toasts)

local RoduxShareLinks = dependencies.RoduxShareLinks
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.installReducer()
local ShareLinks = RoduxShareLinks.installReducer()

local GetFFlagShareInviteLinkContextMenuV1Enabled =
	require(Modules.Settings.Flags.GetFFlagShareInviteLinkContextMenuV1Enabled)

return function(state, action)
	state = state or {}

	return {
		ConversationsSearch = ConversationsSearch(state.ConversationsSearch, action),
		DeviceInfo = DeviceInfo(state.DeviceInfo, action),
		Invites = Invites(state.Invites, action),
		Page = Page(state.Page, action),
		PlaceInfos = PlaceInfos(state.PlaceInfos, action),
		Toasts = Toasts(state.Toasts, action),
		Users = Users(state.Users, action),
		Friends = Friends(state.Friends, action),
		FriendCount = FriendCount(state.FriendCount, action),
		ShareLinks = if GetFFlagShareInviteLinkContextMenuV1Enabled()
			then ShareLinks(state.ShareLinks, action)
			else nil,
		GameInfo = if GetFFlagShareInviteLinkContextMenuV1Enabled() then GameInfo(state.GameInfo, action) else nil,
		NetworkStatus = if GetFFlagShareInviteLinkContextMenuV1Enabled()
			then NetworkStatus(state.NetworkStatus, action)
			else nil,
	}
end
