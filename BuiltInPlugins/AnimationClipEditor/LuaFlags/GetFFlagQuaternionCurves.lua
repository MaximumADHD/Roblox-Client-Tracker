local GetFFlagCurveEditor = require(script.Parent.GetFFlagCurveEditor)

game:DefineFastFlag("ACEQuaternionCurves", false)

return function()
	return GetFFlagCurveEditor() and game:GetFastFlag("ACEQuaternionCurves")
end
