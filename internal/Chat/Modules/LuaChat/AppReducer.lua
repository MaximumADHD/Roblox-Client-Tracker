local Modules = script.Parent
local Users = require(Modules.Reducers.Users)
local UsersAsync = require(Modules.Reducers.UsersAsync)
local Conversations = require(Modules.Reducers.Conversations)
local ConversationsAsync = require(Modules.Reducers.ConversationsAsync)
local AppState = require(Modules.Reducers.AppState)
local ChatEnabled = require(Modules.Reducers.ChatEnabled)
local AppLoaded = require(Modules.Reducers.AppLoaded)
local FriendCount = require(Modules.Reducers.FriendCount)
local ConnectionState = require(Modules.Reducers.ConnectionState)
local Location = require(Modules.Reducers.Location)
local FormFactor = require(Modules.Reducers.FormFactor)
local ToggleChatPaused = require(Modules.Reducers.ToggleChatPaused)
local TabBarVisible = require(Modules.Reducers.TabBarVisible)
local UnreadConversationCount = require(Modules.Reducers.UnreadConversationCount)
local AssetInfo = require(Modules.Reducers.AssetInfo)
local PlaceInfos = require(Modules.Reducers.PlaceInfos)
local PlaceThumbnails = require(Modules.Reducers.PlaceThumbnails)
local Toast = require(Modules.Reducers.Toast)

return function(state, action)
	state = state or {}

	return {
		Users = Users(state.Users, action),
		UsersAsync = UsersAsync(state.UsersAsync, action),

		Conversations = Conversations(state.Conversations, action),
		ConversationsAsync = ConversationsAsync(state.ConversationsAsync, action),

		AppState = AppState(state.AppState, action),
		ChatEnabled = ChatEnabled(state.ChatEnabled, action),
		AppLoaded = AppLoaded(state.AppLoaded, action),
		FriendCount = FriendCount(state.FriendCount, action),
		ConnectionState = ConnectionState(state.ConnectionState, action),
		Location = Location(state.Location, action),
		FormFactor = FormFactor(state.FormFactor, action),
		ToggleChatPaused = ToggleChatPaused(state.ToggleChatPaused, action),
		TabBarVisible = TabBarVisible(state.TabBarVisible, action),
		UnreadConversationCount = UnreadConversationCount(state.UnreadConversationCount, action),
		AssetInfo = AssetInfo(state.AssetInfo, action),
		PlaceInfos = PlaceInfos(state.PlaceInfos, action),
		PlaceThumbnails = PlaceThumbnails(state.PlaceThumbnails, action),
		Toast = Toast(state.Toast, action),
	}
end