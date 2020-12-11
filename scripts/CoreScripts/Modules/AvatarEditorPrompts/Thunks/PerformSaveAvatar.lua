local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

local GetConformedHumanoidDescription = require(AvatarEditorPrompts.GetConformedHumanoidDescription)

local EngineFeatureAvatarEditorServiceAnalytics = game:GetEngineFeature("AvatarEditorServiceAnalytics")
local EngineFeatureAESConformToAvatarRules = game:GetEngineFeature("AESConformToAvatarRules")

return function(store)
	if EngineFeatureAESConformToAvatarRules then
		local addedAssetIds = store:getState().analyticsInfo.addedAssets or {}
		local removedAssetIds = store:getState().analyticsInfo.removedAssets or {}

		local humanoidDescription = store:getState().promptInfo.humanoidDescription

		GetConformedHumanoidDescription(humanoidDescription, --[[includeDefaultClothing]] false):andThen(
			function(conformedDescription)
			AvatarEditorService:PerformSaveAvatarWithDescription(conformedDescription, addedAssetIds, removedAssetIds)
		end, function(err)
			AvatarEditorService:SignalSaveAvatarFailed()
		end)
	elseif EngineFeatureAvatarEditorServiceAnalytics then
		local addedAssetIds = store:getState().analyticsInfo.addedAssets or {}
		local removedAssetIds = store:getState().analyticsInfo.removedAssets or {}

		AvatarEditorService:PerformSaveAvatarNew(addedAssetIds, removedAssetIds)
	else
		AvatarEditorService:PerformSaveAvatar()
	end

	store:dispatch(CloseOpenPrompt())
end