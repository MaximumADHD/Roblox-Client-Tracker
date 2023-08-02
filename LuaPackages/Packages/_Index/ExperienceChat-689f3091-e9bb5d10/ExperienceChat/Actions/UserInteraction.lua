local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

type Interaction = "hover" | "unhover" | "focus" | "unfocus"

export type Action = {
	type: "UserInteraction",
	interaction: Interaction,
}

return Rodux.makeActionCreator(script.Name, function(interaction: Interaction)
	return {
		interaction = interaction,
	}
end)
