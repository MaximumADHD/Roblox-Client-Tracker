--[[
	This thunk is triggered by the game-engine function AssetService:PromptPublishAssetAsync
	It causes a simple single-button modal to appear on-screen with some information like:
	"Your asset has been submitted to moderation" or "Asset publish failed"
	Reducer that handles this action:
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

export type Action = {
	type: string,
	resultType: Enum.PromptPublishAssetResult,
}

return Action(script.Name, function(resultType: Enum.PromptPublishAssetResult)
	return {
		resultType = resultType,
	}
end)
