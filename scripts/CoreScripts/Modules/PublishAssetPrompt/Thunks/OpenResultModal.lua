--[[
	This thunk is triggered by the game-engine function AssetService:PromptPublishAssetAsync
	It causes a simple single-button modal to appear on-screen with some information like:
	"Your asset has been submitted to moderation" or "Asset publish failed"
	See also:
		PublishAssetPrompt.Reducer.PromptRequestReducer
]]
local PublishAssetPrompts = script.Parent.Parent
local OpenResultModal = require(PublishAssetPrompts.Actions.OpenResultModal)

return function(resultType)
	return function(store)
		store:dispatch(OpenResultModal(resultType))
	end
end
