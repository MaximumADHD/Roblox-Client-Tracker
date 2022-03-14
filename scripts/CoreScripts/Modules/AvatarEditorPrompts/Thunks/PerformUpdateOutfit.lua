local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

local GetConformedHumanoidDescription = require(AvatarEditorPrompts.GetConformedHumanoidDescription)

return function(store)
	local humanoidDescription = store:getState().promptInfo.humanoidDescription

	local includeDefaultClothing = false
	GetConformedHumanoidDescription(humanoidDescription, includeDefaultClothing):andThen(function(conformedDescription)
		AvatarEditorService:PerformUpdateOutfit(conformedDescription)
	end, function(err)
		AvatarEditorService:SignalUpdateOutfitFailed()
	end)

	store:dispatch(CloseOpenPrompt())
end
