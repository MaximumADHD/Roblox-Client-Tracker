local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)

type MomentMetadata = MomentsCommon.MomentMetadata
type RecommendationRegistrationInfo = MomentsCommon.RecommendationRegistrationInfo

local AttributeType = MomentsCommon.Enums.AttributeType
local getTagsForMoment = MomentsCommon.Utils.getTagsForMoment

local function makeRegistrationInfo(capture: Capture, metadata: MomentMetadata): RecommendationRegistrationInfo
	local edits = metadata.edits
	local attributes = {}
	local duration = 0

	if edits and edits.trim then
		table.insert(attributes, {
			AssetId = 0,
			Description = AttributeType.PrimaryAsset,
			TrimStartTime = edits.trim.startTime,
		})
		duration = edits.trim.endTime - edits.trim.startTime
	else
		table.insert(attributes, {
			AssetId = 0,
			Description = AttributeType.PrimaryAsset,
			TrimStartTime = 0,
		})
		duration = metadata.assetTotalDuration
	end

	if edits and edits.music then
		table.insert(attributes, {
			AssetId = edits.music.assetId,
			Description = AttributeType.Music,
			TrimStartTime = edits.music.startTime,
		})
	end

	return {
		attributes = attributes,
		contentType = if capture.CaptureType == Enum.CaptureType.Screenshot
			then Enum.RecommendationItemContentType.Static
			else Enum.RecommendationItemContentType.Dynamic,
		customTags = getTagsForMoment(metadata),
		duration = duration,
	}
end

return makeRegistrationInfo
