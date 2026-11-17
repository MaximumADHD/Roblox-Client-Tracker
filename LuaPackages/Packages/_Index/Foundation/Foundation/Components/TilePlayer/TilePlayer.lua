local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BaseTile = require(Foundation.Components.Tile.BaseTile)
local ControlState = require(Foundation.Enums.ControlState)
local Metadata = require(Foundation.Components.Metadata)
local MetadataSize = require(Foundation.Enums.MetadataSize)
local Text = require(Foundation.Components.Text)
local TileAspectRatio = require(Foundation.Enums.TileAspectRatio)
local TilePlayerAvatar = require(script.Parent.TilePlayerAvatar)
local Types = require(Foundation.Components.Types)
local UserPresence = require(Foundation.Enums.UserPresence)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

type Bindable<T> = Types.Bindable<T>
type ControlState = ControlState.ControlState
type MetadataItem = Metadata.MetadataItem
type UserPresence = UserPresence.UserPresence

export type TilePlayerProps = {
	-- Roblox user id of the player to show.
	userId: Bindable<number>,
	-- Presence shown on the avatar. Active and Away draw a status indicator that scales with the avatar; InExperience draws the avatar's ring. Defaults to `UserPresence.None`.
	userPresence: UserPresence?,
	-- When true, composites the player's equipped profile frame into the headshot.
	includeProfileFrame: boolean?,
	-- Fill behind the headshot when the image has transparency. Defaults to `Shift_200`.
	backgroundStyle: Types.ColorStyle?,
	-- The player's display name, centered on one line and truncated when too long.
	title: string,
	-- Secondary line under the title, such as `@username`, drawn with [[Metadata]]. Centered and truncated when too long.
	metadata: (MetadataItem | { MetadataItem })?,
	-- Called when the tile is activated. Without it, the tile is not interactive.
	onActivated: (() -> ())?,
	-- Width of the tile, up to the Pictogram size. Fills the parent by default; the height hugs the content.
	Size: Bindable<UDim2>?,
} & Types.CommonProps

local defaultProps = {
	Size = UDim2.fromScale(1, 0),
	testId = "--foundation-tile-player",
}

local function TilePlayer(tilePlayerProps: TilePlayerProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(tilePlayerProps, defaultProps)
	local tokens = useTokens()
	local controlState, setControlState = React.useBinding<<ControlState>>(ControlState.Default)

	return React.createElement(BaseTile, {
		mediaAspectRatio = TileAspectRatio.Ratio1x1,
		mediaBackgroundStyle = tokens.Color.None,
		mediaContent = React.createElement(TilePlayerAvatar, {
			userId = props.userId,
			userPresence = props.userPresence,
			includeProfileFrame = props.includeProfileFrame,
			backgroundStyle = props.backgroundStyle,
			controlState = if props.onActivated then controlState else nil,
			testId = props.testId,
		}),
		title = React.createElement(Text, {
			Text = props.title,
			tag = "size-full-0 auto-y text-title-small text-align-x-center text-truncate-split content-emphasis",
			testId = `{props.testId}--title`,
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

return React.memo(React.forwardRef(TilePlayer))
