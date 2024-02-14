local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local Otter = require(ProjectRoot.Otter)

type AnimationType = "size" | "transparency"

local LegacyBubbleChatAnimationFix = game:DefineFastFlag("LegacyBubbleChatAnimationFix", false)
local function getSpringFromSettings(chatSettings, animationType: AnimationType)
	local animationSettings
	if animationType == "size" then
		animationSettings = chatSettings.SizeAnimation
	else
		animationSettings = chatSettings.TransparencyAnimation
	end

	if LegacyBubbleChatAnimationFix then
		if animationSettings.Enabled == false then
			-- Legacy BubbleChat defaults animation settings to be enabled unless explicitely specified to be false.
			return Otter.instant
		end
	else
		if not animationSettings.Enabled then
			return Otter.instant
		end
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
