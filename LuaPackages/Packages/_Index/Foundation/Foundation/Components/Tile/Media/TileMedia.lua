local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local MediaType = require(Foundation.Enums.MediaType)
type MediaType = MediaType.MediaType

local ThumbnailType = require(Foundation.Enums.ThumbnailType)
type ThumbnailType = ThumbnailType.ThumbnailType
local ThumbnailSize = require(Foundation.Enums.ThumbnailSize)
type ThumbnailSize = ThumbnailSize.ThumbnailSize

local MediaShape = require(Foundation.Enums.MediaShape)
type MediaShape = MediaShape.MediaShape

local Gradient = require(Foundation.Components.Gradient)
local getRbxThumb = require(Foundation.Utility.getRbxThumb)
local useTile = require(Foundation.Components.Tile.useTile)
local withDefaults = require(Foundation.Utility.withDefaults)

local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle
type StateChangedCallback = Types.StateChangedCallback

local SHAPE_TO_ASPECT_RATIO: { [MediaShape]: number } = {
	[MediaShape.Circle] = 1,
	[MediaShape.Square] = 1,
	[MediaShape.Landscape] = 16 / 9,
	[MediaShape.Portrait] = 9 / 16,
}

type TileMediaProps = {
	id: number?,
	type: MediaType?,
	shape: MediaShape?,
	style: ColorStyle?,
	background: {
		image: string?,
		style: ColorStyle?,
	}?,
	onStateChanged: StateChangedCallback?,
	children: React.ReactNode?,
	LayoutOrder: number?,
}

local defaultProps = {
	shape = MediaShape.Square,
	LayoutOrder = 1,
}

local function TileMedia(tileMediaProps: TileMediaProps)
	local props = withDefaults(tileMediaProps, defaultProps)

	local tileContext = useTile()
	local tokens = useTokens()

	local backgroundStyle: ColorStyle? = if props.background then props.background.style :: any else nil
	local backgroundImage: string? = if props.background then props.background.image else nil

	local image = React.useMemo(function()
		if props.id == nil or props.type == nil then
			return nil :: string?
		end

		return getRbxThumb(props.type :: any, props.id)
	end, { props.type, props.id } :: { any })

	local cornerRadius = if props.shape :: MediaShape == MediaShape.Circle
		then UDim.new(0, tokens.Radius.Circle)
		else UDim.new(0, tokens.Radius.Medium)

	local hasMiddleCorners = tileContext.isContained and cornerRadius

	return React.createElement(if backgroundImage then Image else View, {
		Image = backgroundImage,
		imageStyle = if backgroundImage then backgroundStyle else nil,
		backgroundStyle = if backgroundImage then nil else backgroundStyle,
		Size = if tileContext.fillDirection == Enum.FillDirection.Vertical
			then UDim2.fromScale(1, 0)
			else UDim2.fromScale(0, 1),
		ZIndex = 0,
		LayoutOrder = props.LayoutOrder,
		aspectRatio = {
			AspectRatio = SHAPE_TO_ASPECT_RATIO[props.shape],
			AspectType = Enum.AspectType.ScaleWithParentSize,
			DominantAxis = if tileContext.fillDirection == Enum.FillDirection.Vertical
				then Enum.DominantAxis.Width
				else Enum.DominantAxis.Height,
		},
		cornerRadius = cornerRadius,
		onStateChanged = props.onStateChanged,
		testId = `{tileContext.testId}--media`,
	}, {
		-- If the tile is contained, we only round the top two corners.
		-- This is achieved by duplicating the background and images, and only
		-- showing half of each (rounding all four on the first set, and none on the second)
		TransparencyGradient = if hasMiddleCorners
			then React.createElement(Gradient, {
				fillDirection = tileContext.fillDirection,
				top = true,
			})
			else nil,
		MiddleCorners = if hasMiddleCorners
			then React.createElement(Image, {
				Image = backgroundImage,
				imageStyle = if backgroundImage then backgroundStyle else nil,
				backgroundStyle = if backgroundImage then nil else backgroundStyle,
				ZIndex = 0,
				tag = "size-full",
			}, {
				TransparencyGradient = React.createElement(Gradient, {
					fillDirection = tileContext.fillDirection,
					top = false,
				}),
			})
			else nil,
		Image = React.createElement(Image, {
			Image = image,
			cornerRadius = cornerRadius,
			imageStyle = props.style,
			tag = {
				["size-full"] = true,
				["padding-medium"] = props.children ~= nil,
			},
			testId = `{tileContext.testId}--media-image`,
		}, props.children),
	})
end

return TileMedia
