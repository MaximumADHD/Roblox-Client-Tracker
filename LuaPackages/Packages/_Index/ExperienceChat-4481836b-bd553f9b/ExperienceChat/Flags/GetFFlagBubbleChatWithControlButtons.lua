game:DefineFastFlag("BubbleChatWithControlButtons", false)
local EngineFeatureSelfViewEnum = game:GetEngineFeature("CoreGuiTypeSelfViewPresent")

return function()
	return game:GetFastFlag("BubbleChatWithControlButtons") and EngineFeatureSelfViewEnum
end
