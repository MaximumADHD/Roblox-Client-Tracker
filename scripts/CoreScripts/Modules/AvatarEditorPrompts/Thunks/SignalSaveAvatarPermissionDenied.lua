local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

return function(store)
	AvatarEditorService:SignalSaveAvatarPermissionDenied()

	store:dispatch(CloseOpenPrompt())
end