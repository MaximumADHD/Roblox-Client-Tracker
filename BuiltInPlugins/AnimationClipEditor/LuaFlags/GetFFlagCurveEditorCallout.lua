local GetFFlagCurveEditor = require(script.Parent.GetFFlagCurveEditor)

game:DefineFastFlag("ACECurveEditorCallout", false)

return function()
	return GetFFlagCurveEditor() and game:GetFastFlag("ACECurveEditorCallout")
end
