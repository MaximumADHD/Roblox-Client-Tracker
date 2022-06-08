game:DefineFastFlag("ACECurveAnalytics", false)

local GetFFlagChannelAnimations = require(script.Parent.GetFFlagChannelAnimations)

return function()
	return GetFFlagChannelAnimations() and game:GetFastFlag("ACECurveAnalytics")
end
