local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

return function(outfitName)
	return function(store)
		AvatarEditorService:PerformCreateOutfit(outfitName)

		store:dispatch(CloseOpenPrompt())
	end
end