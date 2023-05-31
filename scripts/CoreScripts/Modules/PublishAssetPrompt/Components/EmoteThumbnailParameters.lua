local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)

export type Type = {
	-- thumbnailBundleId: number, -- we currently do not use this parameter as we are using costumeId for the preview

	thumbnailKeyframe: number, -- only one of thumbnailKeyframe and thumbnailTime is posing the character based on the type of AnimationClip
	thumbnailTime: number, -- only one of thumbnailKeyframe and thumbnailTime is posing the character based on the type of AnimationClip

	thumbnailZoom: number,
	thumbnailVerticalOffset: number,
	thumbnailHorizontalOffset: number,

	thumbnailCharacterRotation: number,
}

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

return EmoteThumbnailParameters
