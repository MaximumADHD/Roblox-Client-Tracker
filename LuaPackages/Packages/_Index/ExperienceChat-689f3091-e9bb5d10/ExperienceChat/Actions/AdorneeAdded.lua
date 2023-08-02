local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "AdorneeAdded",
	userId: string,
	character: Model,
	humanoid: Humanoid,
}

return Rodux.makeActionCreator(script.Name, function(userId: string | number, character: Model, humanoid: Humanoid)
	return {
		userId = tostring(userId),
		character = character,
		humanoid = humanoid,
	}
end)
