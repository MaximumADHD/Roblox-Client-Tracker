local Plugin = script.Parent.Parent.Parent

local ReviewStatus = require(Plugin.Src.Util.ReviewStatus)

local ModerationUtil = {}

ModerationUtil.isApprovedAsset = function(moderationData) : boolean
	if moderationData.isModerated then
		return false
	end
	return moderationData.reviewStatus == ReviewStatus.Finished
		or moderationData.reviewStatus == ReviewStatus.DoesNotRequire
end

ModerationUtil.getModerationTooltip = function(localization, moderationData)
	if moderationData.reviewStatus == ReviewStatus.Pending then
		return localization:getText("AssetItem", "PendingModerationTooltip")
	elseif moderationData.isModerated then
		return localization:getText("AssetItem", "FailedModerationTooltip")
	end
end

return ModerationUtil