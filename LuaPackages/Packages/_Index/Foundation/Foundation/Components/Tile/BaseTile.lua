local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BaseTileContent = require(script.Parent.BaseTileContent)
local BaseTileMedia = require(script.Parent.BaseTileMedia)
local TileAspectRatio = require(Foundation.Enums.TileAspectRatio)
local Types = require(Foundation.Components.Types)
local getTestIdTag = require(Foundation.Utility.getTestIdTag)
local joinBindables = require(Foundation.Utility.joinBindables)
local mapBindable = require(Foundation.Utility.mapBindable)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local useGuiControlState = require(Foundation.Utility.Control.useGuiControlState)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

type Bindable<T> = Types.Bindable<T>
type StateChangedCallback = Types.StateChangedCallback
type TileAspectRatio = TileAspectRatio.TileAspectRatio

local DEFAULT_TILE_WIDTH_UNSCALED = 250

type Measurement = {
	tileHeight: React.Binding<number>,
	setTileHeight: (number) -> (),
	contentHeight: React.Binding<number>,
	setContentHeight: (number) -> (),
}

type Measured = {
	mediaMaxHeight: React.Binding<number?>,
	onTileAbsoluteSizeChanged: (instance: GuiObject) -> (),
	onContentAbsoluteSizeChanged: (instance: GuiObject) -> (),
}

local function isHeightBounded(size: UDim2): boolean
	return size.Y.Scale ~= 0 or size.Y.Offset ~= 0
end

export type BaseTileProps = {
	-- Fills the tile with a surface and pads the content inside it
	isContained: boolean?,
	-- Surface behind a contained tile; defaults to Shift_200
	containedBackgroundStyle: Types.ColorStyle?,
	-- Element rendered in the media well, clipped at the well's corners
	mediaContent: React.ReactElement?,
	-- Width-to-height ratio of the media well
	mediaAspectRatio: TileAspectRatio?,
	-- Fill behind the media well; defaults to Shift_200
	mediaBackgroundStyle: Types.ColorStyle?,
	-- Primary text, the first line under the media
	title: React.ReactElement,
	-- Secondary text under the title
	metadata: React.ReactElement?,
	-- Fixed-size slot beside the title and metadata
	contentAction: React.ReactElement?,
	-- Full-width slot under the title and metadata
	footer: React.ReactElement?,
	-- Called when the tile is activated; makes the tile selectable
	onActivated: (() -> ())?,
	-- Called with the tile's control state, including the initial state on mount
	onStateChanged: StateChangedCallback?,
	-- Called instead of onActivated for a right click, long touch, gamepad R3, or Alt+Enter; makes the tile selectable
	onSecondaryActivated: ((self: GuiObject, inputObject: InputObject) -> ())?,
	-- Tile size; a zero height hugs the content, and a bounded height shrinks the media to fit
	Size: Bindable<UDim2>?,
} & Types.CommonProps

local defaultProps = {
	mediaAspectRatio = TileAspectRatio.Ratio16x9,
	isContained = false,
	testId = "--foundation-base-tile",
}

-- selene: allow(high_cyclomatic_complexity)
local function BaseTile(tileProps: BaseTileProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(tileProps, defaultProps)
	local tokens = useTokens()
	local cursorConfig = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Medium),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })
	local cursor = useCursor(cursorConfig)
	local tileSize = props.Size or UDim2.fromOffset(DEFAULT_TILE_WIDTH_UNSCALED * tokens.Config.UI.Scale, 0)
	local automaticSize = mapBindable(tileSize, function(size: UDim2): Enum.AutomaticSize
		return if isHeightBounded(size) then Enum.AutomaticSize.None else Enum.AutomaticSize.Y
	end)

	local needsHeightMeasurement = typeof(tileSize) ~= "UDim2" or isHeightBounded(tileSize)
	-- Bindings are created lazily so hugging tiles don't pay for measurement
	local measurementRef = React.useRef(nil :: Measurement?)
	if needsHeightMeasurement and measurementRef.current == nil then
		local tileHeight, setTileHeight = React.createBinding(0)
		local contentHeight, setContentHeight = React.createBinding(0)
		measurementRef.current = {
			tileHeight = tileHeight,
			setTileHeight = setTileHeight,
			contentHeight = contentHeight,
			setContentHeight = setContentHeight,
		}
	end

	local onAbsoluteSizeChanged = props.onAbsoluteSizeChanged
	local measured = React.useMemo(function(): Measured?
		local measurement = measurementRef.current
		if not needsHeightMeasurement or measurement == nil then
			return nil
		end
		return {
			mediaMaxHeight = joinBindables({
				size = tileSize,
				tileHeight = measurement.tileHeight,
				contentHeight = measurement.contentHeight,
			}, function(values): number?
				return if isHeightBounded(values.size)
					then math.max(values.tileHeight - values.contentHeight, 0)
					else nil
			end) :: React.Binding<number?>,
			onTileAbsoluteSizeChanged = function(instance: GuiObject)
				measurement.setTileHeight(instance.AbsoluteSize.Y)
				if onAbsoluteSizeChanged ~= nil then
					onAbsoluteSizeChanged(instance)
				end
			end,
			onContentAbsoluteSizeChanged = function(instance: GuiObject)
				measurement.setContentHeight(instance.AbsoluteSize.Y)
			end,
		}
	end, { tileSize, needsHeightMeasurement, onAbsoluteSizeChanged } :: { unknown })

	local onActivated = props.onActivated
	local onSecondaryActivated = props.onSecondaryActivated
	local onStateChanged = props.onStateChanged
	local isActivatable = onActivated ~= nil or onSecondaryActivated ~= nil

	local tracksState = onStateChanged ~= nil
	local backgroundStyle = if props.isContained
		then props.containedBackgroundStyle or tokens.Color.Shift.Shift_200
		else nil

	local stateRef =
		useGuiControlState((if tracksState then ref else nil) :: any, onStateChanged :: StateChangedCallback)

	local isInteractive = isActivatable or tracksState
	local hostProps: { [string]: any } = {
		AnchorPoint = props.AnchorPoint,
		AutomaticSize = automaticSize,
		BackgroundColor3 = if backgroundStyle ~= nil
			then mapBindable(backgroundStyle, function(value)
				return value.Color3
			end)
			else nil,
		BackgroundTransparency = if backgroundStyle ~= nil
			then mapBindable(backgroundStyle, function(value)
				return value.Transparency
			end)
			else 1,
		BorderSizePixel = 0,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = tileSize,
		Visible = props.Visible,
		ZIndex = props.ZIndex,
		ref = if tracksState then stateRef else ref,
		[React.Change.AbsoluteSize] = if measured ~= nil
			then measured.onTileAbsoluteSizeChanged
			else onAbsoluteSizeChanged,
		[React.Change.AbsolutePosition] = props.onAbsolutePositionChanged,
		[React.Tag] = getTestIdTag(props.testId),
	}

	if isInteractive then
		hostProps.Active = isActivatable
		hostProps.AutoButtonColor = false
		hostProps.Selectable = isActivatable
		hostProps.SelectionImageObject = cursor
		hostProps.Text = ""
		hostProps[React.Event.Activated] = onActivated
		hostProps[React.Event.SecondaryActivated] = onSecondaryActivated
	end

	return React.createElement(if isInteractive then "TextButton" else "Frame", hostProps, {
		Corner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, tokens.Radius.Medium),
		}),
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Media = React.createElement(BaseTileMedia, {
			content = props.mediaContent,
			aspectRatio = props.mediaAspectRatio,
			backgroundStyle = props.mediaBackgroundStyle or tokens.Color.Shift.Shift_200,
			isContained = props.isContained,
			tileSize = tileSize,
			maxHeight = if measured ~= nil then measured.mediaMaxHeight else nil,
			LayoutOrder = 1,
			testId = `{props.testId}--media`,
		}),
		Content = React.createElement(BaseTileContent, {
			title = props.title,
			metadata = props.metadata,
			contentAction = props.contentAction,
			footer = props.footer,
			isContained = props.isContained,
			onAbsoluteSizeChanged = if measured ~= nil then measured.onContentAbsoluteSizeChanged else nil,
			LayoutOrder = 2,
			testId = props.testId,
		}),
	})
end

return React.memo(React.forwardRef(BaseTile))
