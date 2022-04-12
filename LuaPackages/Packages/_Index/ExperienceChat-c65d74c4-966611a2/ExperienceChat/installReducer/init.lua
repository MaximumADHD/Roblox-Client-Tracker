local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	Messages = require(script.Messages),
	MutedUsers = require(script.MutedUsers),
	Players = require(script.Players),
	LocalCharacter = require(script.LocalCharacter),
	TargetTextChannel = require(script.TargetTextChannel),
	ChatVisibility = require(script.Parent.ChatVisibility.Reducers),
	CanLocalUserChat = require(script.Parent.CanLocalUserChat.Reducers),
})
