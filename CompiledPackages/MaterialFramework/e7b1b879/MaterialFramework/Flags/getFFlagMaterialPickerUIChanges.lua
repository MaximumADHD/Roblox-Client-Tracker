game:DefineFastFlag("MaterialPickerUIChanges", false)

return function()
	return game:GetEngineFeature("MaterialPickerBetaEnabled") or game:GetFastFlag("MaterialPickerUIChanges")
end
