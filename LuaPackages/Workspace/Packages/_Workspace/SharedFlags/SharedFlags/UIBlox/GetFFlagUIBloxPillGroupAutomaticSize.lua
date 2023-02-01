game:DefineFastFlag("UIBloxPillGroupAutomaticSize", false)

return function()
	return game:GetEngineFeature("UseActualSizeToCalculateListMinSize")
		and game:GetFastFlag("UIBloxPillGroupAutomaticSize")
end
