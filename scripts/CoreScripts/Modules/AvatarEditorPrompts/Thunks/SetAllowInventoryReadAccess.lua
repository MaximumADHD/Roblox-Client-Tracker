local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

return function(readAccessAllowed)
	return function(store)
		AvatarEditorService:SetAllowInventoryReadAccess(readAccessAllowed)

		store:dispatch(CloseOpenPrompt())
	end
end