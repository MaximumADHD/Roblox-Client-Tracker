pcall(function()
	game:DefineFastFlag("FitFrameAutomaticSizing", false)
end)

-- Check whether the fast flag which guards the FitFrame using AutomaticSizing is enabled
return function()
	local success, value = pcall(function()
		return game:GetEngineFeature("AutomaticSizing2") and game:GetFastFlag("FitFrameAutomaticSizing")
	end)
	return success and value
end
