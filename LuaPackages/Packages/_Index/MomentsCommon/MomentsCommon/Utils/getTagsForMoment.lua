local MomentsCommon = script:FindFirstAncestor("MomentsCommon")

local Types = require(MomentsCommon.Types)
type MomentMetadata = Types.MomentMetadata

local Constants = require(MomentsCommon.Constants)

local function getTagsForMoment(metadata: MomentMetadata): { string }
	local tags = {}

	if metadata.captureType == Enum.CaptureType.Screenshot then
		table.insert(tags, "screenshot")
	elseif metadata.captureType == Enum.CaptureType.Video then
		table.insert(tags, "video")
	end

	if metadata.universeId then
		table.insert(tags, Constants.TagPrefix.Universe .. tostring(metadata.universeId))
	end

	if metadata.edits then
		if metadata.edits.trim then
			table.insert(tags, "trim")
		end
		if metadata.edits.music then
			table.insert(tags, "music")
			if metadata.edits.music.assetId then
				table.insert(tags, Constants.TagPrefix.Music .. tostring(metadata.edits.music.assetId))
			end
		end
		if metadata.edits.textOverlays then
			table.insert(tags, "text_overlay")
		end
	end

	return tags
end

return getTagsForMoment
