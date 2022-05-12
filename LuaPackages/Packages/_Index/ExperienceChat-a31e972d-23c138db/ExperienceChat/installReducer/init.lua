local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	Messages = require(script.Messages),
	MutedUsers = require(script.MutedUsers),
	Players = require(script.Players),
	LocalCharacter = require(script.LocalCharacter),
	TextChannels = require(script.TextChannels),
	ChatVisibility = require(script.Parent.ChatVisibility.Reducers),
	CanLocalUserChat = require(script.Parent.CanLocalUserChat.Reducers),
	LocalTeam = require(script.LocalTeam),
})
