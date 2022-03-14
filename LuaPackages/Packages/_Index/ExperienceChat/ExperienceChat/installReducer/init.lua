local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return function()
	return Rodux.combineReducers({
		ChatVisibility = require(script.Parent.ChatVisibility.Reducers),
		ChatMessages = require(script.Parent.ChatMessages.Reducers),
		CanLocalUserChat = require(script.Parent.CanLocalUserChat.Reducers),
		ChatCommands = require(script.Parent.ChatCommands.Reducers),
		PlayersList = require(script.Parent.PlayersList.Reducers),
		ChatInput = require(script.Parent.ChatInput.Reducers),
	})
end
