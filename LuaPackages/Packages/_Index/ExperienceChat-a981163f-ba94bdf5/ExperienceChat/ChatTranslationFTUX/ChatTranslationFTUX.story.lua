local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)

local ChatTranslationFTUX = require(script.Parent)

return {
	story = function()
		return Roact.createElement(ChatTranslationFTUX, {})
	end,
}
