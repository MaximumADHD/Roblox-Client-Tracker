local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local ChatWindowMessagesCleared = require(Actions.ChatWindowMessagesCleared)

local CommandTypes = require(script.Parent.types)

local command: CommandTypes.Command = {
	name = script.Name,
	alias = { "/clear", "/cls" },
	clientRun = function(store, _, _)
		store:dispatch(ChatWindowMessagesCleared())
		return {
			key = "",
			metadata = "Roblox.Clear.Info.Success",
		}
	end,
}

return command
