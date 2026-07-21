--[[
	This action is triggered by the game-engine function AvatarCreationService:PromptCreateMakeupAsync
	It causes a "Publish Makeup Look" prompt to appear on-screen.
	Reducer that handles this action:
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)

export type Action = {
	type: string,
	promptInfo: {
		promptType: string,
		guid: string,
		scopes: any,
		makeupEntries: any,
	},
}

return Rodux.makeActionCreator(script.Name, function(promptType: string, guid: string, scopes: any, makeupEntries: any)
	return {
		promptInfo = {
			promptType = promptType,
			guid = guid,
			scopes = scopes,
			makeupEntries = makeupEntries,
		},
	}
end)
