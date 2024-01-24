local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "CommandAliasChanged",
	name: string,
	primaryAlias: string,
	secondaryAlias: boolean,
}

return Rodux.makeActionCreator(script.Name, function(name: string, primaryAlias: string, secondaryAlias: string)
	return {
		name = name,
		primaryAlias = primaryAlias,
		secondaryAlias = secondaryAlias,
	}
end)
