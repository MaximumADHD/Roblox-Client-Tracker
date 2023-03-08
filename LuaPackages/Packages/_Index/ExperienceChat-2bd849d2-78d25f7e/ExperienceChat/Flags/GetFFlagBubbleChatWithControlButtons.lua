game:DefineFastFlag("BubbleChatWithControlButtons4", false)
local EngineFeatureSelfViewEnum = game:GetEngineFeature("CoreGuiTypeSelfViewPresent")

return function()
	return game:GetFastFlag("BubbleChatWithControlButtons4") and EngineFeatureSelfViewEnum
end
