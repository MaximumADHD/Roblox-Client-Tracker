--[[
	This action is triggered by the game-engine function AvatarCreationService:PromptCreateAvatarAssetAsync
	It causes a "Publish Avatar Accessory" prompt to appear on-screen. We need to pass an instance and Enum.AccessoryType to this prompt.
	Reducer that handles this action:
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)

export type Action = {
	type: string,
	promptInfo: {
		promptType: string,
		accessoryType: Enum.AccessoryType,
		guid: string,
		scopes: any,
	},
}

return Rodux.makeActionCreator(
	script.Name,
	function(promptType: string, accessoryType: Enum.AccessoryType, guid: string, scopes: any)
		return {
			promptInfo = {
				promptType = promptType,
				accessoryType = accessoryType,
				guid = guid,
				scopes = scopes,
			},
		}
	end
)
