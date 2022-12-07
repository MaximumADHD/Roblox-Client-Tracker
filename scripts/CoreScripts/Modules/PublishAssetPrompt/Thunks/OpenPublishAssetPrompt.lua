--[[
	This thunk is triggered by the game-engine function AssetService:PromptPublishAssetAsync
	It causes a "Publish Asset" prompt to appear on-screen. We need to pass an instance and Enum.AssetType to this prompt.
	See also:
		PublishAssetPrompt.Actions.OpenPublishAssetPrompt
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local PublishAssetPrompts = script.Parent.Parent
local OpenPublishAssetPrompt = require(PublishAssetPrompts.Actions.OpenPublishAssetPrompt)

return function(assetInstance, assetType)
	return function(store)
		store:dispatch(OpenPublishAssetPrompt(assetInstance, assetType))
	end
end
