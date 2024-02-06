local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: string,
	useTranslation: boolean,
	messageId: string,
}

return Rodux.makeActionCreator(script.Name, function(useTranslation: boolean, messageId: string)
	return {
		useTranslation = useTranslation,
		messageId = messageId,
	}
end)
