--[[
	This action is triggered by the game-engine function AssetService:PromptPublishAvatarAsync
	It causes a "Publish Avatar" prompt to appear on-screen. We need to pass a HumanoidModel to this prompt.
	Reducer that handles this action:
		../Reducer/PromptRequestReducer
]]
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

export type Action = {
	type: string,
	promptInfo: {
		promptType: string,
		humanoidModel: Model?,
		guid: string,
		scopes: any,
	},
}

return Rodux.makeActionCreator(
	script.Name,
	function(promptType: string, humanoidModel: Model?, guid: string, scopes: any)
		return {
			promptInfo = {
				promptType = promptType,
				humanoidModel = humanoidModel,
				guid = guid,
				scopes = scopes,
			},
		}
	end
)
