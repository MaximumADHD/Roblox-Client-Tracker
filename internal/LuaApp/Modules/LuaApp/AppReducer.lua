local Modules = game:GetService("CoreGui").RobloxGui.Modules

local DeviceOrientation = require(Modules.LuaApp.Reducers.DeviceOrientation)
local TopBar = require(Modules.LuaApp.Reducers.TopBar)

local Games = require(Modules.LuaApp.Reducers.Games)
local GameSorts = require(Modules.LuaApp.Reducers.GameSorts)
local GameSortGroups = require(Modules.LuaApp.Reducers.GameSortGroups)
local LocalUserId = require(Modules.LuaApp.Reducers.LocalUserId)
local Users = require(Modules.LuaApp.Reducers.Users)
local UsersAsync = require(Modules.LuaChat.Reducers.UsersAsync)
local UserStatuses = require(Modules.LuaApp.Reducers.UserStatuses)
local AppRouter = require(Modules.LuaApp.Reducers.AppRouter)
local GameThumbnails = require(Modules.LuaApp.Reducers.GameThumbnails)
local Search = require(Modules.LuaApp.Reducers.Search)
local Startup = require(Modules.LuaApp.Reducers.Startup)
local NotificationBadgeCounts = require(Modules.LuaApp.Reducers.NotificationBadgeCounts)
local EntriesInSort = require(Modules.LuaApp.Reducers.EntriesInSort)

local PlaceInfos = require(Modules.LuaChat.Reducers.PlaceInfos)
local PlaceThumbnails = require(Modules.LuaChat.Reducers.PlaceThumbnails)
local FriendCount = require(Modules.LuaChat.Reducers.FriendCount)
local ConnectionState = require(Modules.LuaChat.Reducers.ConnectionState)
local FormFactor = require(Modules.LuaChat.Reducers.FormFactor)

local ChatAppReducer = require(Modules.LuaChat.AppReducer)

return function(state, action)
	state = state or {}

	return {
		DeviceOrientation = DeviceOrientation(state.DeviceOrientation, action),
		TopBar = TopBar(state.TopBar, action),

		-- Users
		Users = Users(state.Users, action),
		UsersAsync = UsersAsync(state.UsersAsync, action),
		UserStatuses = UserStatuses(state.UserStatuses, action),
		LocalUserId = LocalUserId(state.LocalUserId, action),

		-- Game Data
		Games = Games(state.Games, action),
		GameSorts = GameSorts(state.GameSorts, action),
		GameSortGroups = GameSortGroups(state.GameSortGroups, action),
		GameThumbnails = GameThumbnails(state.GameThumbnails, action),
		EntriesInSort = EntriesInSort(state.EntriesInSort, action),

		AppRouter = AppRouter(state.AppRouter, action),

		Search = Search(state.Search, action),

		PlaceInfos = PlaceInfos(state.PlaceInfos, action),
		PlaceThumbnails = PlaceThumbnails(state.PlaceThumbnails, action),
		FriendCount = FriendCount(state.FriendCount, action),
		ConnectionState = ConnectionState(state.ConnectionState, action),
		FormFactor = FormFactor(state.FormFactor, action),

		ChatAppReducer = ChatAppReducer(state.ChatAppReducer, action),

		Startup = Startup(state.Startup, action),
		NotificationBadgeCounts = NotificationBadgeCounts(state.NotificationBadgeCounts, action),
	}
end