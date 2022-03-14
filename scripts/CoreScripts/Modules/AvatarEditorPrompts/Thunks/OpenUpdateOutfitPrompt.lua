local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)

local GetOutfitName = require(AvatarEditorPrompts.Network.GetOutfitName)

local PromptType = require(AvatarEditorPrompts.PromptType)

return function(outfitId, humanoidDescription, rigType)
	return function(store)
		GetOutfitName(outfitId):andThen(function(name)
			store:dispatch(OpenPrompt(PromptType.UpdateOutfit, {
				outfitId = outfitId,
				outfitName = name,
				humanoidDescription = humanoidDescription,
				rigType = rigType,
			}))
		end, function(err)
			AvatarEditorService:SignalUpdateOutfitFailed()
		end)
	end
end
