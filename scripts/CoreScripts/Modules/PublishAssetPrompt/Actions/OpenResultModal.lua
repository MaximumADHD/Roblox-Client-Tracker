--[[
	This thunk is triggered by the game-engine function AssetService:PromptCreatePlatformContentAsync
	It causes a simple single-button modal to appear on-screen with some information like:
	"Your asset has been submitted to moderation" or "Asset publish failed"
	Reducer that handles this action:
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Packages.Rodux).makeActionCreator

export type Action = {
	type: string,
	resultType: Enum.PromptCreatePlatformContentResult,
}

return Action(script.Name, function(resultType: Enum.PromptCreatePlatformContentResult)
	return {
		resultType = resultType,
	}
end)
