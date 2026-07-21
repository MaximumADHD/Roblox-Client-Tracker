--[[
	This thunk is triggered by the game-engine function AvatarCreationService:PromptCreateMakeupAsync
	It causes a "Publish Makeup Look" prompt to appear on-screen.
	See also:
		../Actions/OpenPublishMakeupLookPrompt
		../Reducer/PromptRequestReducer
]]
local PublishAssetPrompts = script.Parent.Parent
local OpenPublishMakeupLookPrompt = require(PublishAssetPrompts.Actions.OpenPublishMakeupLookPrompt)
local PromptType = require(PublishAssetPrompts.PromptType)

return function(guid: string, scopes: any, makeupEntries: any)
	return function(store)
		store:dispatch(OpenPublishMakeupLookPrompt(PromptType.PublishMakeupLook, guid, scopes, makeupEntries))
	end
end
