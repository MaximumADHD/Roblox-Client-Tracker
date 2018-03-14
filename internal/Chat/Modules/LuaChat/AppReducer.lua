local Modules = script.Parent
local Conversations = require(Modules.Reducers.Conversations)
local ConversationsAsync = require(Modules.Reducers.ConversationsAsync)
local AppState = require(Modules.Reducers.AppState)
local ChatEnabled = require(Modules.Reducers.ChatEnabled)
local AppLoaded = require(Modules.Reducers.AppLoaded)
local Location = require(Modules.Reducers.Location)
local ToggleChatPaused = require(Modules.Reducers.ToggleChatPaused)
local TabBarVisible = require(Modules.Reducers.TabBarVisible)
local UnreadConversationCount = require(Modules.Reducers.UnreadConversationCount)
local PlaceInfosAsync = require(Modules.Reducers.PlaceInfosAsync)
local PlaceThumbnailsAsync = require(Modules.Reducers.PlaceThumbnailsAsync)
local Toast = require(Modules.Reducers.Toast)

return function(state, action)
	state = state or {}

	return {
		-- Unique to Chat
		AppState = AppState(state.AppState, action),
		Location = Location(state.Location, action),
		ChatEnabled = ChatEnabled(state.ChatEnabled, action),
		AppLoaded = AppLoaded(state.AppLoaded, action),
		ToggleChatPaused = ToggleChatPaused(state.ToggleChatPaused, action),

		-- May be able to be shared with other pages
		Toast = Toast(state.Toast, action),
		TabBarVisible = TabBarVisible(state.TabBarVisible, action),
		Conversations = Conversations(state.Conversations, action),
		ConversationsAsync = ConversationsAsync(state.ConversationsAsync, action),
		UnreadConversationCount = UnreadConversationCount(state.UnreadConversationCount, action),
		PlaceInfosAsync = PlaceInfosAsync(state.PlaceInfosAsync, action),
		PlaceThumbnailsAsync = PlaceThumbnailsAsync(state.PlaceThumbnailsAsync, action),
	}
end