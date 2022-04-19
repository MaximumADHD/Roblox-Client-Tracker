local GetFFlagChannelAnimations = require(script.Parent.GetFFlagChannelAnimations)

game:DefineFastFlag("ACECurveEditorRelease", false)

return function()
	return GetFFlagChannelAnimations() and game:GetFastFlag("ACECurveEditorRelease")
end
