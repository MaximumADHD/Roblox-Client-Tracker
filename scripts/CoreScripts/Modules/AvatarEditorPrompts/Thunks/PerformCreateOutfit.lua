local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

local GetConformedHumanoidDescription = require(AvatarEditorPrompts.GetConformedHumanoidDescription)

return function(outfitName)
	return function(store)
		local humanoidDescription = store:getState().promptInfo.humanoidDescription

		local includeDefaultClothing = false
		GetConformedHumanoidDescription(humanoidDescription, includeDefaultClothing):andThen(function(conformedDescription)
			AvatarEditorService:PerformCreateOutfitWithDescription(conformedDescription, outfitName)
		end, function(err)
			AvatarEditorService:SignalCreateOutfitFailed()
		end)

		store:dispatch(CloseOpenPrompt())
	end
end
