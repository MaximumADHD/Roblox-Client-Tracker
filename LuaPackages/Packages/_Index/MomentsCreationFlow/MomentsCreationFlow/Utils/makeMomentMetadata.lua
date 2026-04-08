local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)

type Edits = MomentsCommon.Edits
type MomentMetadata = MomentsCommon.MomentMetadata

local function makeMomentMetadata(capture: Capture, description: string?, edits: Edits): MomentMetadata
	return {
		assetTotalDuration = if capture.CaptureType == Enum.CaptureType.Screenshot
			then MomentsCommon.Constants.ScreenshotMusicDuration
			else (capture :: VideoCapture).TimeLength,
		captureType = capture.CaptureType,
		description = description,
		universeId = capture.SourceUniverseId,
		placeId = capture.SourcePlaceId,
		edits = edits,
	}
end

return makeMomentMetadata
