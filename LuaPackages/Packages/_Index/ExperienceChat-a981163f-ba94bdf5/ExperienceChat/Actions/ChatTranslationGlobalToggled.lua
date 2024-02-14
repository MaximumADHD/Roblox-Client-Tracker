local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: string,
	useTranslation: boolean,
}

return Rodux.makeActionCreator(script.Name, function(useTranslation: boolean)
	return {
		useTranslation = useTranslation,
	}
end)
