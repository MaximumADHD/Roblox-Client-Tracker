local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BaseTileMediaClipping = require(Foundation.Enums.BaseTileMediaClipping)
local TileAspectRatio = require(Foundation.Enums.TileAspectRatio)
local Types = require(Foundation.Components.Types)
local getBaseTileMediaCorners = require(script.Parent.getBaseTileMediaCorners)
local getTestIdTag = require(Foundation.Utility.getTestIdTag)
local mapBindable = require(Foundation.Utility.mapBindable)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Bindable<T> = Types.Bindable<T>
type BaseTileMediaClipping = BaseTileMediaClipping.BaseTileMediaClipping
type TileAspectRatio = TileAspectRatio.TileAspectRatio

export type BaseTileMediaProps = {
	content: React.ReactElement?,
	clippingStyle: BaseTileMediaClipping,
	aspectRatio: TileAspectRatio,
	backgroundStyle: Types.ColorStyle,
	isSizeConstrained: boolean,
	isContained: boolean,
	tileSize: Bindable<UDim2>,
	maxHeight: React.Binding<number?>?,
	LayoutOrder: number,
	testId: string,
}

local ASPECT_RATIO: { [TileAspectRatio]: number } = {
	[TileAspectRatio.Ratio1x1] = 1,
	[TileAspectRatio.Ratio16x9] = 16 / 9,
	[TileAspectRatio.Ratio2x3] = 2 / 3,
}

local FILL = UDim2.fromScale(1, 1)

local function BaseTileMedia(props: BaseTileMediaProps)
	local tokens = useTokens()

	local aspectRatio = ASPECT_RATIO[props.aspectRatio]
	local staticTileSize: UDim2? = if typeof(props.tileSize) == "UDim2" then props.tileSize else nil
	local offsetWidth = if staticTileSize ~= nil
			and staticTileSize.X.Scale == 0
			and not props.isSizeConstrained
		then staticTileSize.X.Offset
		else nil
	local hugSize = if offsetWidth ~= nil then UDim2.fromOffset(offsetWidth, offsetWidth / aspectRatio) else FILL
	local size = if props.maxHeight ~= nil
		then props.maxHeight:map(function(maxHeight: number?): UDim2
			return if maxHeight ~= nil then UDim2.new(1, 0, 0, maxHeight) else hugSize
		end)
		else hugSize
	local corners = getBaseTileMediaCorners(tokens, props.isContained)

	return React.createElement(
		if props.clippingStyle == BaseTileMediaClipping.Rounded and props.content ~= nil then "CanvasGroup" else "Frame",
		{
			BackgroundColor3 = mapBindable(props.backgroundStyle, function(value)
				return value.Color3
			end),
			BackgroundTransparency = mapBindable(props.backgroundStyle, function(value)
				return value.Transparency
			end),
			BorderSizePixel = 0,
			ClipsDescendants = props.clippingStyle ~= BaseTileMediaClipping.None,
			LayoutOrder = props.LayoutOrder,
			Size = size,
			[React.Tag] = getTestIdTag(props.testId),
		},
		{
			Corner = React.createElement("UICorner", {
				TopLeftRadius = corners.TopLeftRadius,
				TopRightRadius = corners.TopRightRadius,
				BottomLeftRadius = corners.BottomLeftRadius,
				BottomRightRadius = corners.BottomRightRadius,
				[React.Tag] = getTestIdTag(`{props.testId}--corner`),
			}),
			AspectRatio = if offsetWidth == nil or props.maxHeight ~= nil
				then React.createElement("UIAspectRatioConstraint", {
					AspectRatio = aspectRatio,
					AspectType = Enum.AspectType.FitWithinMaxSize,
					DominantAxis = Enum.DominantAxis.Width,
				})
				else nil,
			Content = props.content,
		}
	)
end

return React.memo(BaseTileMedia)
