local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

local EngineFeatureAvatarEditorServiceAnalytics = game:GetEngineFeature("AvatarEditorServiceAnalytics")

return function(store)
	if EngineFeatureAvatarEditorServiceAnalytics then
		local addedAssetIds = store:getState().analyticsInfo.addedAssets or {}
		local removedAssetIds = store:getState().analyticsInfo.removedAssets or {}

		AvatarEditorService:PerformSaveAvatarNew(addedAssetIds, removedAssetIds)
	else
		AvatarEditorService:PerformSaveAvatar()
	end

	store:dispatch(CloseOpenPrompt())
end