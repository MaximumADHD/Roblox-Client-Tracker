game:DefineFastFlag("BubbleChatWithControlButtons3", false)
local EngineFeatureSelfViewEnum = game:GetEngineFeature("CoreGuiTypeSelfViewPresent")

return function()
	return game:GetFastFlag("BubbleChatWithControlButtons3") and EngineFeatureSelfViewEnum
end
