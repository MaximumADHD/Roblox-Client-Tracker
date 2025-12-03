--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local dependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies

local PlaceInfos = require(CorePackages.Workspace.Packages.PlaceInfoRodux).Reducers.PlaceInfosReducer
local Users = require(CorePackages.Workspace.Packages.UserLib).Reducers.UserReducer
local Friends = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Reducers.Friends
local FriendCount = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Reducers.FriendCount

local ConversationsSearch = require(ShareGame.Reducers.ConversationsSearch)
local DeviceInfo = require(ShareGame.Reducers.DeviceInfo)
local Invites = require(ShareGame.Reducers.Invites)
local GameInfo = require(ShareGame.Reducers.GameInfo)
local Page = require(ShareGame.Reducers.Page)
local Toasts = require(ShareGame.Reducers.Toasts)

local ShareLinksRodux = dependencies.ShareLinksRodux
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.installReducer()
local ShareLinks = ShareLinksRodux.installReducer()

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
		ShareLinks = ShareLinks(state.ShareLinks, action),
		GameInfo = GameInfo(state.GameInfo, action),
		NetworkStatus = NetworkStatus(state.NetworkStatus, action),
	}
end
