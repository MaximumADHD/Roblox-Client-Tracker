--[[
	This thunk is triggered by the game-engine function AssetService:PromptPublishAvatarAsync
	It causes a "Publish Avatar" prompt to appear on-screen. We need to pass a HumanoidModel to this prompt.
	See also:
		../Actions/OpenPublishAvatarPrompt
		../Reducer/PromptRequestReducer
]]
local PublishAssetPrompts = script.Parent.Parent
local OpenPublishAvatarPrompt = require(PublishAssetPrompts.Actions.OpenPublishAvatarPrompt)
local PromptType = require(PublishAssetPrompts.PromptType)

return function(guid: string, scopes: any)
	return function(store)
		store:dispatch(OpenPublishAvatarPrompt(PromptType.PublishAvatar, guid, scopes))
	end
end
