local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	Messages = require(script.Messages),
	MutedUsers = require(script.MutedUsers),
	Players = require(script.Players),
	ChatVisibility = require(script.Parent.ChatVisibility.Reducers),
	CanLocalUserChat = require(script.Parent.CanLocalUserChat.Reducers),
	ChatInput = require(script.Parent.ChatInput.Reducers),
})
