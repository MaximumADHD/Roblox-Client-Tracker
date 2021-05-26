local UniversalAppOnWindows = game:GetEngineFeature("UniversalAppOnWindows")
game:DefineFastFlag("InGameMenuOpenOnHover", false)

return function()
	return UniversalAppOnWindows and game:GetFastFlag("InGameMenuOpenOnHover")
end
