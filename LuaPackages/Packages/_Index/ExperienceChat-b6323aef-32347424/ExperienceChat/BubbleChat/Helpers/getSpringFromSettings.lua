local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Otter = require(ProjectRoot.Otter)

type AnimationType = "size" | "transparency"

local function getSpringFromSettings(chatSettings, animationType: AnimationType)
	local animationSettings
	if animationType == "size" then
		animationSettings = chatSettings.SizeAnimation
	else
		animationSettings = chatSettings.TransparencyAnimation
	end

	if not animationSettings.Enabled then
		return Otter.instant
	end

	local config = {
		dampingRatio = animationSettings.SpringDampingRatio,
		frequency = animationSettings.SpringFrequency,
	}

	return function(targetValue)
		return Otter.spring(targetValue, config)
	end
end

return getSpringFromSettings
