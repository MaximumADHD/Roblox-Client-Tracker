local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Image = require(Foundation.Components.Image)

local MediaAspectRatio = require(Foundation.Enums.MediaAspectRatio)
type MediaAspectRatio = MediaAspectRatio.MediaAspectRatio
local MediaOrientation = require(Foundation.Enums.MediaOrientation)
type MediaOrientation = MediaOrientation.MediaOrientation

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

-- The ratio of the longer side to the shorter side for each aspect ratio.
local LONG_TO_SHORT: { [MediaAspectRatio]: number } = {
	[MediaAspectRatio.Ratio1x1] = 1,
	[MediaAspectRatio.Ratio5x4] = 5 / 4,
	[MediaAspectRatio.Ratio4x3] = 4 / 3,
	[MediaAspectRatio.Ratio3x2] = 3 / 2,
	[MediaAspectRatio.Ratio16x9] = 16 / 9,
	[MediaAspectRatio.Ratio2x1] = 2,
}

export type MediaImage = {
	type: "Image",
	source: Bindable<string>,
}

-- The visual content to display, as a tagged union so new media types (e.g. video)
-- can be added without changing the API shape.
export type MediaContent = MediaImage

export type MediaProps = {
	-- The content to display, cropped to fill the aspect ratio.
	content: MediaContent?,
	aspectRatio: MediaAspectRatio?,
	orientation: MediaOrientation?,
} & Types.CommonProps

local defaultProps = {
	aspectRatio = MediaAspectRatio.Ratio1x1 :: MediaAspectRatio,
	orientation = MediaOrientation.Landscape :: MediaOrientation,
	testId = "--foundation-media",
}

local function Media(mediaProps: MediaProps)
	local props = withDefaults(mediaProps, defaultProps)

	local aspectRatio = React.useMemo(function()
		local longToShort = LONG_TO_SHORT[props.aspectRatio]
		-- AspectRatio on UIAspectRatioConstraint is width / height.
		local widthOverHeight = if props.orientation == MediaOrientation.Portrait then 1 / longToShort else longToShort
		return {
			AspectRatio = widthOverHeight,
			AspectType = Enum.AspectType.ScaleWithParentSize,
			DominantAxis = Enum.DominantAxis.Width,
		}
	end, { props.aspectRatio, props.orientation } :: { unknown })

	local content = props.content
	local imageSource = if content and content.type == "Image" then content.source else nil

	return React.createElement(
		Image,
		withCommonProps(props, {
			Image = imageSource,
			ScaleType = Enum.ScaleType.Crop,
			Size = UDim2.fromScale(1, 0),
			aspectRatio = aspectRatio,
		})
	)
end

return React.memo(Media)
