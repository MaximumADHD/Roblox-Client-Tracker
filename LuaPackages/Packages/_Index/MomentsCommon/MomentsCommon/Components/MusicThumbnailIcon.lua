local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local Image = Foundation.Image
local Skeleton = Foundation.Skeleton
local getRbxThumb = Foundation.Utility.getRbxThumb

local useImageLoadingState = require(MomentsCommon.Hooks.useImageLoadingState)

local MusicThumbnailIconSize = require(MomentsCommon.Enums.MusicThumbnailIconSize)
type MusicThumbnailIconSize = MusicThumbnailIconSize.MusicThumbnailIconSize

export type MusicThumbnailIconProps = {
	assetId: number,
	size: MusicThumbnailIconSize,
}

local ICON_SIZE_MAPPING = {
	[MusicThumbnailIconSize.Small] = 24,
	[MusicThumbnailIconSize.Large] = 40,
}

local ICON_RADIUS_MAPPING = {
	[MusicThumbnailIconSize.Small] = 2,
	[MusicThumbnailIconSize.Large] = 4,
}

local MusicThumbnailIcon = function(props: MusicThumbnailIconProps)
	local imageUri = getRbxThumb(Foundation.Enums.ThumbnailType.Asset, props.assetId)
	local isImageLoaded = useImageLoadingState(imageUri)
	local iconSize = ICON_SIZE_MAPPING[props.size]

	if isImageLoaded then
		return React.createElement(Image, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			cornerRadius = UDim.new(0, ICON_RADIUS_MAPPING[props.size]),
			Image = imageUri,
			LayoutOrder = 1,
			Position = UDim2.fromScale(0.5, 0.5),
			ScaleType = Enum.ScaleType.Fit,
			Size = UDim2.fromOffset(iconSize, iconSize),
		})
	else
		return React.createElement(Skeleton, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			LayoutOrder = 1,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(iconSize, iconSize),
		})
	end
end

return MusicThumbnailIcon
