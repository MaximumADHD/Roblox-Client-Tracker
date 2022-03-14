local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

return function(outfitName)
	return function(store)
		AvatarEditorService:PerformRenameOutfit(outfitName)

		store:dispatch(CloseOpenPrompt())
	end
end
