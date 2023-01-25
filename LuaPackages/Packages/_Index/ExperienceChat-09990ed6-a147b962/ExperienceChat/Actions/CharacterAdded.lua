local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "CharacterAdded",
	userId: string,
	character: Model,
}

return Rodux.makeActionCreator(script.Name, function(userId: string | number, character: Model)
	return {
		userId = tostring(userId),
		character = character,
	}
end)
