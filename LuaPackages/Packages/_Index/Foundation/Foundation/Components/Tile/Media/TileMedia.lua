local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local MediaType = require(Foundation.Enums.MediaType)
type MediaType = MediaType.MediaType

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local useTileLayout = require(Foundation.Components.Tile.useTileLayout)
local withDefaults = require(Foundation.Utility.withDefaults)

local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle

type TileMediaProps = {
	mediaId: number?,
	mediaType: MediaType?,
	aspectRatio: number?,
	radius: Radius?,
	background: (string | ColorStyle)?,
	children: React.ReactElement<any, string>?,
	LayoutOrder: number?,
}

local defaultProps = {
	aspectRatio = 1,
	radius = Radius.None,
	LayoutOrder = 1,
}

local function TileMedia(tileMediaProps: TileMediaProps)
	local props = withDefaults(tileMediaProps, defaultProps)

	local tileLayout = useTileLayout()
	local tokens = useTokens()

	local backgroundStyle: ColorStyle? = nil
	local backgroundImage: string? = nil
	if typeof(props.background) == "string" then
		-- String
		backgroundImage = props.background
	elseif props.background ~= nil then
		-- Color
		backgroundStyle = props.background
	end

	local image = React.useMemo(function()
		if props.mediaType == nil or props.mediaId == nil then
			return nil :: string?
		end

		return `rbxthumb://type={props.mediaType}&id={props.mediaId}&w=150&h=150`
	end, { props.mediaType, props.mediaId } :: { any })

	local cornerRadius = if props.radius ~= Radius.None then UDim.new(0, tokens.Radius[props.radius]) else nil

	return React.createElement(if backgroundImage then Image else View, {
		Image = backgroundImage,
		Size = if tileLayout.fillDirection == Enum.FillDirection.Vertical
			then UDim2.fromScale(1, 0)
			else UDim2.fromScale(0, 1),
		ZIndex = 0,
		LayoutOrder = props.LayoutOrder,

		aspectRatio = {
			AspectRatio = props.aspectRatio,
			AspectType = Enum.AspectType.ScaleWithParentSize,
			DominantAxis = if tileLayout.fillDirection == Enum.FillDirection.Vertical
				then Enum.DominantAxis.Width
				else Enum.DominantAxis.Height,
		},
		cornerRadius = cornerRadius,
	}, {
		-- If the tile has a background and no padding around the media, we only round the top two corners.
		MiddleCorners = if tileLayout.hasBackground
				and tileLayout.tilePadding == nil
				and cornerRadius
			then React.createElement(Image, {
				Image = backgroundImage,
				ZIndex = 0,
				tag = "size-full",
			}, {
				TransparencyGradient = React.createElement("UIGradient", {
					Rotation = if tileLayout.fillDirection == Enum.FillDirection.Vertical then 90 else 0,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(0.5, 0),
						NumberSequenceKeypoint.new(1, 0),
					}),
				}),
				Image = React.createElement(Image, {
					Image = image,
					backgroundStyle = backgroundStyle,
					tag = "size-full",
				}, {
					TransparencyGradient = React.createElement("UIGradient", {
						Rotation = if tileLayout.fillDirection == Enum.FillDirection.Vertical then 90 else 0,
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 1),
							NumberSequenceKeypoint.new(0.5, 0),
							NumberSequenceKeypoint.new(1, 0),
						}),
					}),
				}),
			})
			else nil,
		Image = React.createElement(Image, {
			Image = image,
			cornerRadius = cornerRadius,
			backgroundStyle = backgroundStyle,
			tag = "size-full",
		}, props.children),
	})
end

return TileMedia
