local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Games = require(Modules.LuaApp.Reducers.Games)
local GameSorts = require(Modules.LuaApp.Reducers.GameSorts)
local GameSortGroups = require(Modules.LuaApp.Reducers.GameSortGroups)
local LocalUser = require(Modules.LuaApp.Reducers.LocalUser)
local Users = require(Modules.LuaApp.Reducers.Users)
local UsersAsync = require(Modules.LuaChat.Reducers.UsersAsync)
local AppRouter = require(Modules.LuaApp.Reducers.AppRouter)
local GameThumbnails = require(Modules.LuaApp.Reducers.GameThumbnails)
local GamesInSort = require(Modules.LuaApp.Reducers.GamesInSort)

local PlaceInfos = require(Modules.LuaChat.Reducers.PlaceInfos)
local PlaceThumbnails = require(Modules.LuaChat.Reducers.PlaceThumbnails)
local FriendCount = require(Modules.LuaChat.Reducers.FriendCount)
local ConnectionState = require(Modules.LuaChat.Reducers.ConnectionState)
local FormFactor = require(Modules.LuaChat.Reducers.FormFactor)

local ChatAppReducer = require(Modules.LuaChat.AppReducer)

return function(state, action)
	state = state or {}

	return {
		-- Users
		Users = Users(state.Users, action),
		UsersAsync = UsersAsync(state.UsersAsync, action),
		LocalUser = LocalUser(state.LocalUser, action),

		-- Game Data
		Games = Games(state.Games, action),
		GameSorts = GameSorts(state.GameSorts, action),
		GameSortGroups = GameSortGroups(state.GameSortGroups, action),
		GameThumbnails = GameThumbnails(state.GameThumbnails, action),
		GamesInSort = GamesInSort(state.GamesInSort, action),

		AppRouter = AppRouter(state.AppRouter, action),

		PlaceInfos = PlaceInfos(state.PlaceInfos, action),
		PlaceThumbnails = PlaceThumbnails(state.PlaceThumbnails, action),
		FriendCount = FriendCount(state.FriendCount, action),
		ConnectionState = ConnectionState(state.ConnectionState, action),
		FormFactor = FormFactor(state.FormFactor, action),

		ChatAppReducer = ChatAppReducer(state.ChatAppReducer, action),
	}
end