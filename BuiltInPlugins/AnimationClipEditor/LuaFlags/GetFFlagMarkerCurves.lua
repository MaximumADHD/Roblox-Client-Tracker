local Plugin = script.Parent.Parent

game:DefineFastFlag("ACEMarkerCurves", false)

return function()
	return game:GetFastFlag("ACEMarkerCurves")
end
