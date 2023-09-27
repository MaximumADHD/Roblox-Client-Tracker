local CorePackages = game:GetService("CorePackages")

local Otter = require(CorePackages.Packages.Otter)

local function getTransparencySpringFromSettings(chatSettings)
	local animationSettings = chatSettings.TransparencyAnimation
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

return getTransparencySpringFromSettings
