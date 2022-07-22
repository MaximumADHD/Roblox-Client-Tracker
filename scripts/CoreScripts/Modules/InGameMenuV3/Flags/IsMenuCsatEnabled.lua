game:DefineFastFlag("UniversalAppMenuCsat", false)

return function()
	return game:GetEngineFeature("UniversalAppCsatAppStorageKey")
		and game:GetFastFlag("UniversalAppMenuCsat")
		and game:GetFastFlag("EnableV3MenuABTest")
end
