local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

return function(store)
	AvatarEditorService:PerformSetFavorite()

	store:dispatch(CloseOpenPrompt())
end