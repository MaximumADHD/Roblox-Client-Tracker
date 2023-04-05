--[[
	This action is triggered by the game-engine function AssetService:PromptPublishAssetAsync
	It causes a "Publish Asset" prompt to appear on-screen. We need to pass an instance and Enum.AssetType to this prompt.
	Reducer that handles this action:
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

export type Action = {
	type: string,
	promptInfo: {
		promptType: string,
		assetInstance: any,
		assetType: Enum.AssetType,
		guid: string,
		scopes: any,
	},
}

return Rodux.makeActionCreator(
	script.Name,
	function(promptType: string, assetInstance: any, assetType: Enum.AssetType, guid: string, scopes: any)
		return {
			promptInfo = {
				promptType = promptType,
				assetInstance = assetInstance,
				assetType = assetType,
				guid = guid,
				scopes = scopes,
			},
		}
	end
)
