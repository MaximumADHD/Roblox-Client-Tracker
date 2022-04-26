local GetFFlagChannelAnimations = require(script.Parent.GetFFlagChannelAnimations)

game:DefineFastFlag("ACECurveEditorRelease1", false)

return function()
	return GetFFlagChannelAnimations() and game:GetFastFlag("ACECurveEditorRelease1")
end
