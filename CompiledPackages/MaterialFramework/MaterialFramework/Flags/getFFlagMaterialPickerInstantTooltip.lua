game:DefineFastFlag("MaterialPickerInstantTooltip", false)

return function()
	return game:GetEngineFeature("MaterialPickerBetaEnabled") or game:GetFastFlag("MaterialPickerInstantTooltip")
end
