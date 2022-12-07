--[[
	This action is triggered by the game-engine function AssetService:PromptPublishAssetAsync
	It causes a "Publish Asset" prompt to appear on-screen. We need to pass an instance and Enum.AssetType to this prompt.
	Reducer that handles this action:
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(assetInstance, assetType)
	return {
		assetInstance = assetInstance,
		assetType = assetType,
	}
end)
