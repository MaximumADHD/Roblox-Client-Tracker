local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)

local GetOutfitName = require(AvatarEditorPrompts.Network.GetOutfitName)

local PromptType = require(AvatarEditorPrompts.PromptType)

return function(outfitId)
	return function(store)
		GetOutfitName(outfitId):andThen(function(name)
			store:dispatch(OpenPrompt(PromptType.RenameOutfit, {
				outfitId = outfitId,
				outfitName = name,
			}))
		end, function(err)
			AvatarEditorService:SignalRenameOutfitFailed()
		end)
	end
end
