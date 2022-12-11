game:DefineFastFlag("UniversalAppMenuCsat2", false)

return function()
	return game:GetEngineFeature("UniversalAppCsatAppStorageKey")
		and game:GetFastFlag("UniversalAppMenuCsat2")
		and game:GetFastFlag("EnableV3MenuABTest2")
end
