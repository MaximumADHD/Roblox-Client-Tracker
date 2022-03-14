local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

-- @TODO add proper typechecking once TextChatMessage is added
return Rodux.makeActionCreator(script.Name, function(textChatMessage)
	return {
		textChatMessage = textChatMessage,
	}
end)
