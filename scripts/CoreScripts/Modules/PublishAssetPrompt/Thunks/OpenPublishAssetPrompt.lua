--[[
	This thunk is triggered by the game-engine function AssetService:PromptPublishAssetAsync
	It causes a "Publish Asset" prompt to appear on-screen. We need to pass an instance and Enum.AssetType to this prompt.
	See also:
		PublishAssetPrompt.Actions.OpenPublishAssetPrompt
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local PublishAssetPrompts = script.Parent.Parent
local OpenPublishAssetPrompt = require(PublishAssetPrompts.Actions.OpenPublishAssetPrompt)
local PromptType = require(PublishAssetPrompts.PromptType)

return function(assetInstance: any, assetType: Enum.AssetType, guid: string, scopes: any)
	return function(store)
		-- If the assetInstance is not a model, wrap it in a model so that it can be displayed by ObjectViewport
		-- In the future, we may want to handle other asset types here as well.
		if assetInstance:IsA("Accessory") then
			local newModel = Instance.new("Model")
			newModel.Parent = assetInstance.Parent
			assetInstance.Parent = newModel

			-- All accessories should have a basepart child, which we can use as a PrimaryPart
			local primaryPart = assetInstance:FindFirstChildWhichIsA("BasePart", true)
			if primaryPart == nil then
				print("Error: accessory to be published does not contain a BasePart")
			else
				newModel.PrimaryPart = primaryPart
				assetInstance = newModel
			end
		end

		store:dispatch(
			OpenPublishAssetPrompt(PromptType.PublishAssetSingleStep, assetInstance, assetType, guid, scopes)
		)
	end
end
