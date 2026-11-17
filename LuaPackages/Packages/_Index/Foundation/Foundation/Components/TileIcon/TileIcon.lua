local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BaseTile = require(Foundation.Components.Tile.BaseTile)
local BaseTileMediaClipping = require(Foundation.Enums.BaseTileMediaClipping)
local ControlState = require(Foundation.Enums.ControlState)
local Metadata = require(Foundation.Components.Metadata)
local MetadataSize = require(Foundation.Enums.MetadataSize)
local Text = require(Foundation.Components.Text)
local TileAspectRatio = require(Foundation.Enums.TileAspectRatio)
local TileIconIndicator = require(script.Parent.TileIconIndicator)
local TileIconMedia = require(script.Parent.TileIconMedia)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

type Bindable<T> = Types.Bindable<T>
type ControlState = ControlState.ControlState
type MetadataItem = Metadata.MetadataItem

export type TileIconIndicator = TileIconIndicator.TileIconIndicator

export type TileIconProps = {
	-- Builder icon name or icon config drawn in the center of the circle. Sized at 40% of the circle, between 24 and 40.
	icon: Types.IconConfig,
	-- The tile's label, centered on one line and truncated when too long.
	label: string,
	-- Secondary line under the label, drawn with [[Metadata]]. Centered and truncated when too long.
	metadata: (MetadataItem | { MetadataItem })?,
	-- A status indicator at the circle's top right, numeric when it has a `value`. Omit for none.
	indicator: TileIconIndicator?,
	-- Called when the tile is activated. Without it, the tile is not interactive.
	onActivated: (() -> ())?,
	-- Width of the tile, up to the Pictogram size. Fills the parent by default; the height hugs the content.
	Size: Bindable<UDim2>?,
} & Types.CommonProps

local defaultProps = {
	Size = UDim2.fromScale(1, 0),
	testId = "--foundation-tile-icon",
}

local function TileIcon(tileIconProps: TileIconProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(tileIconProps, defaultProps)
	local tokens = useTokens()
	local controlState, setControlState = React.useBinding<<ControlState>>(ControlState.Default)

	return React.createElement(BaseTile, {
		mediaAspectRatio = TileAspectRatio.Ratio1x1,
		mediaBackgroundStyle = tokens.Color.None,
		mediaClippingStyle = BaseTileMediaClipping.None,
		mediaContent = React.createElement(TileIconMedia, {
			icon = if typeof(props.icon) == "table" then props.icon.name else props.icon,
			iconVariant = if typeof(props.icon) == "table" then props.icon.variant else nil,
			indicator = props.indicator,
			controlState = if props.onActivated then controlState else nil,
			testId = props.testId,
		}),
		title = React.createElement(Text, {
			Text = props.label,
			tag = "size-full-0 auto-y text-title-small text-align-x-center text-truncate-split content-emphasis",
			testId = `{props.testId}--label`,
		}),
		metadata = if props.metadata
			then React.createElement(View, {
				tag = "col align-x-center size-full-0 auto-y",
			}, {
				Metadata = React.createElement(Metadata, {
					text = props.metadata,
					size = MetadataSize.Small,
					testId = `{props.testId}--metadata`,
				}),
			})
			else nil,
		onActivated = props.onActivated,
		onStateChanged = if props.onActivated then setControlState else nil,
		Size = props.Size,
		maxSize = Vector2.new(tokens.Size.Size_2400, math.huge),
		AnchorPoint = props.AnchorPoint,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Visible = props.Visible,
		ZIndex = props.ZIndex,
		onAbsoluteSizeChanged = props.onAbsoluteSizeChanged,
		onAbsolutePositionChanged = props.onAbsolutePositionChanged,
		testId = props.testId,
		ref = ref,
	})
end

return React.memo(React.forwardRef(TileIcon))
