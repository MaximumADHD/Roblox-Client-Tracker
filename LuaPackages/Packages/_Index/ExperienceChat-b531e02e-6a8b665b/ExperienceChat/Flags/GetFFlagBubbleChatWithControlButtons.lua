game:DefineFastFlag("BubbleChatWithControlButtons2", false)
local EngineFeatureSelfViewEnum = game:GetEngineFeature("CoreGuiTypeSelfViewPresent")

return function()
	return game:GetFastFlag("BubbleChatWithControlButtons2") and EngineFeatureSelfViewEnum
end
