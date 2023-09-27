local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)

local MANNEQUIN_BUNDLE_ID = 515
export type Type = {
	-- thumbnailBundleId: number, -- we currently do not use this parameter as we are using costumeId for the preview

	thumbnailKeyframe: number, -- only one of thumbnailKeyframe and thumbnailTime is posing the character based on the type of AnimationClip
	thumbnailTime: number, -- only one of thumbnailKeyframe and thumbnailTime is posing the character based on the type of AnimationClip

	thumbnailZoom: number,
	thumbnailVerticalOffset: number,
	thumbnailHorizontalOffset: number,

	thumbnailCharacterRotation: number,
}
type Table = { [string]: number }

local EmoteThumbnailParameters = {}

EmoteThumbnailParameters.validate = t.strictInterface({
	thumbnailKeyframe = t.number,
	thumbnailTime = t.number,

	thumbnailZoom = t.number,
	thumbnailVerticalOffset = t.number,
	thumbnailHorizontalOffset = t.number,

	thumbnailCharacterRotation = t.number,
})

EmoteThumbnailParameters.defaultParameters = {
	thumbnailKeyframe = 1,
	thumbnailTime = 0,
	thumbnailZoom = 1,
	thumbnailVerticalOffset = 0,
	thumbnailHorizontalOffset = 0,
	thumbnailCharacterRotation = 0,
}

EmoteThumbnailParameters.encodeAsATable = function(thumbnailParameters: Type): Table
	local encodedParameters = {}

	encodedParameters["ThumbnailBundleId"] = MANNEQUIN_BUNDLE_ID
	encodedParameters["ThumbnailCharacterRotation"] = thumbnailParameters.thumbnailCharacterRotation
	encodedParameters["ThumbnailHorizontalOffset"] = thumbnailParameters.thumbnailHorizontalOffset
	encodedParameters["ThumbnailVerticalOffset"] = thumbnailParameters.thumbnailVerticalOffset
	encodedParameters["ThumbnailZoom"] = thumbnailParameters.thumbnailZoom
	encodedParameters["ThumbnailKeyframe"] = thumbnailParameters.thumbnailKeyframe
	encodedParameters["ThumbnailTime"] = thumbnailParameters.thumbnailTime

	return encodedParameters
end

return EmoteThumbnailParameters
