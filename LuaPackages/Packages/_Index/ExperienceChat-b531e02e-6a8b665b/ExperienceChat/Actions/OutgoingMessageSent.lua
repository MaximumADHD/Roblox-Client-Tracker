local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: string,
	textChatMessage: TextChatMessage,
}

return Rodux.makeActionCreator(script.Name, function(textChatMessage: TextChatMessage)
	return {
		textChatMessage = textChatMessage,
	}
end)
