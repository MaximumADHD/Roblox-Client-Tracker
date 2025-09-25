--[[
	This thunk is triggered by the game-engine function AvatarCreationService:PromptCreateAvatarAssetAsync
	It causes a "Publish Avatar Accessory" prompt to appear on-screen. We need to pass an instance and accessoryType to this prompt.
	See also:
		../Actions/OpenPublishAvatarAssetPrompt
		../Reducer/PromptRequestReducer
]]
local PublishAssetPrompts = script.Parent.Parent
local OpenPublishAvatarAssetPrompt = require(PublishAssetPrompts.Actions.OpenPublishAvatarAssetPrompt)
local PromptType = require(PublishAssetPrompts.PromptType)

return function(accessoryType: Enum.AccessoryType, guid: string, scopes: any)
	return function(store)
		store:dispatch(OpenPublishAvatarAssetPrompt(PromptType.PublishAvatarAsset, accessoryType, guid, scopes))
	end
end
