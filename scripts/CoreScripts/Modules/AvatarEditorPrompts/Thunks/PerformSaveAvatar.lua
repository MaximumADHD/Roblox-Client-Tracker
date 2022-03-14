local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

local GetConformedHumanoidDescription = require(AvatarEditorPrompts.GetConformedHumanoidDescription)

return function(store)
	local addedAssetIds = store:getState().analyticsInfo.addedAssets or {}
	local removedAssetIds = store:getState().analyticsInfo.removedAssets or {}

	local humanoidDescription = store:getState().promptInfo.humanoidDescription

	GetConformedHumanoidDescription(humanoidDescription, --[[includeDefaultClothing]] false):andThen(
		function(conformedDescription)
		AvatarEditorService:PerformSaveAvatarWithDescription(conformedDescription, addedAssetIds, removedAssetIds)
	end, function(err)
		AvatarEditorService:SignalSaveAvatarFailed()
	end)

	store:dispatch(CloseOpenPrompt())
end
