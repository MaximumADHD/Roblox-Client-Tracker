local UniversalAppOnWindows = game:GetEngineFeature("UniversalAppOnWindows")
game:DefineFastFlag("InGameMenuIconTooltip", false)

return function()
	return UniversalAppOnWindows and game:GetFastFlag("InGameMenuIconTooltip")
end
