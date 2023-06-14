local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "LocalCharacterLoaded",
	character: Model,
}

return Rodux.makeActionCreator(script.Name, function(character: Model)
	return {
		character = character,
	}
end)
