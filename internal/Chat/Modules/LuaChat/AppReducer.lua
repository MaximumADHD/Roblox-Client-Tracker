local Modules = script.Parent
local Users = require(Modules.Reducers.Users)
local Conversations = require(Modules.Reducers.Conversations)
local AppState = require(Modules.Reducers.AppState)
local ChatEnabled = require(Modules.Reducers.ChatEnabled)
local AppLoaded = require(Modules.Reducers.AppLoaded)
local FriendCount = require(Modules.Reducers.FriendCount)
local FetchingConversations = require(Modules.Reducers.FetchingConversations)
local FetchedOldestConversation = require(Modules.Reducers.FetchedOldestConversation)
local ConnectionState = require(Modules.Reducers.ConnectionState)
local Location = require(Modules.Reducers.Location)
local FormFactor = require(Modules.Reducers.FormFactor)
local ToggleChatPaused = require(Modules.Reducers.ToggleChatPaused)
local TabBarVisible = require(Modules.Reducers.TabBarVisible)
local FetchedAllFriends = require(Modules.Reducers.FetchedAllFriends)
local UnreadConversationCount = require(Modules.Reducers.UnreadConversationCount)
local AssetInfo = require(Modules.Reducers.AssetInfo)
local PlaceInfos = require(Modules.Reducers.PlaceInfos)
local PlaceThumbnails = require(Modules.Reducers.PlaceThumbnails)
local Toast = require(Modules.Reducers.Toast)

return function(state, action)
	state = state or {}

	return {
		Users = Users(state.Users, action),
		Conversations = Conversations(state.Conversations, action),
		AppState = AppState(state.AppState, action),
		ChatEnabled = ChatEnabled(state.ChatEnabled, action),
		AppLoaded = AppLoaded(state.AppLoaded, action),
		FriendCount = FriendCount(state.FriendCount, action),
		FetchingConversations = FetchingConversations(state.FetchingConversations, action),
		FetchedOldestConversation = FetchedOldestConversation(state.FetchedOldestConversation, action),
		ConnectionState = ConnectionState(state.ConnectionState, action),
		Location = Location(state.Location, action),
		FormFactor = FormFactor(state.FormFactor, action),
		ToggleChatPaused = ToggleChatPaused(state.ToggleChatPaused, action),
		TabBarVisible = TabBarVisible(state.TabBarVisible, action),
		FetchedAllFriends = FetchedAllFriends(state.FetchedAllFriends, action),
		UnreadConversationCount = UnreadConversationCount(state.UnreadConversationCount, action),
		AssetInfo = AssetInfo(state.AssetInfo, action),
		PlaceInfos = PlaceInfos(state.PlaceInfos, action),
		PlaceThumbnails = PlaceThumbnails(state.PlaceThumbnails, action),
		Toast = Toast(state.Toast, action),
	}
end