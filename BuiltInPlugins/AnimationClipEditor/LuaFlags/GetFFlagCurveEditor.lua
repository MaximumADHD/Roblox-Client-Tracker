local GetFFlagChannelAnimations = require(script.Parent.GetFFlagChannelAnimations)

game:DefineFastFlag("ACECurveEditor", false)

return function()
	return GetFFlagChannelAnimations() and game:GetFastFlag("ACECurveEditor")
end
