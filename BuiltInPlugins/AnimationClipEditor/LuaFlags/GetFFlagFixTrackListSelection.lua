local GetFFlagCurveEditor = require(script.Parent.GetFFlagCurveEditor)

game:DefineFastFlag("ACEFixTrackListSelection", false)

return function()
	return GetFFlagCurveEditor() and game:GetFastFlag("ACEFixTrackListSelection")
end
