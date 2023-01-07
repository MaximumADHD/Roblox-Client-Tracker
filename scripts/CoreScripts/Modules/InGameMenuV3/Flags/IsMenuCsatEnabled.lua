game:DefineFastFlag("UniversalAppMenuCsat3", false)

return function()
	return game:GetEngineFeature("UniversalAppCsatAppStorageKey")
		and game:GetFastFlag("UniversalAppMenuCsat3")
		and game:GetFastFlag("EnableV3MenuABTest3")
end
