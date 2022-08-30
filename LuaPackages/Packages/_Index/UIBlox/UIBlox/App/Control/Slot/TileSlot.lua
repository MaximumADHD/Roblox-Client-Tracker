local Slot = script.Parent
local Control = Slot.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local React = require(Packages.React)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(Core.Button.getContentStyle)

local Interactable = require(Core.Control.Interactable)

local useStyle = require(Core.Style.useStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ShimmerPanel = require(UIBlox.App.Loading.ShimmerPanel)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local Images = require(App.ImageSet.Images)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)

local BACKGROUND_IMAGE = Images["component_assets/circle_9"]
local BORDER_IMAGE = Images["component_assets/circle_9_stroke_1"]

local BORDER_STATE_COLOR_MAP_OFF = {
	[ControlState.Default] = "SecondaryDefault",
	[ControlState.Hover] = "SecondaryOnHover",
}

local BORDER_STATE_COLOR_MAP_ON = {
	[ControlState.Default] = "SecondaryDefault",
	[ControlState.Hover] = "SecondaryDefault",
}

local TEXT_STATE_COLOR_MAP_OFF = {
	[ControlState.Default] = "TextDefault",
	[ControlState.Hover] = "TextEmphasis",
}

local TEXT_STATE_COLOR_MAP_ON = {
	[ControlState.Default] = "TextEmphasis",
	[ControlState.Hover] = "TextEmphasis",
}

local BG_EMPTY_COLOR_MAP_OFF = {
	[ControlState.Default] = "BackgroundMuted",
}

local BG_EMPTY_COLOR_MAP_ON = {
	[ControlState.Default] = "PlaceHolder",
}

local BG_FILLED_COLOR_MAP = {
	[ControlState.Default] = "PlaceHolder",
}

local IMAGE_STATE_COLOR_MAP = {
	[ControlState.Default] = "TextEmphasis",
}

local DEFAULT_SLOT_SIZE = 48
local INNER_PADDING = 12

export type Props = {
	isSelected: boolean,

	-- The index of the tileslot in the slotTray
	index: number,

	--The activated callback of the slot
	onActivated: (index: number) -> (),

	-- If the mode is EMPTY, requires a text
	displayText: string?,

	-- If the mode is FILLED, requires a Thumbnail Image
	thumbnail: string?,

	-- Is the slot loading or not
	isLoading: boolean?,

	-- Is the slot disabled or not
	isDisabled: boolean?,

	--The state change callback for the slot
	onStateChanged: ((newState: any, oldState: any) -> ())?,

	-- The position of the slot
	position: UDim2?,

	-- The size of the slot
	size: UDim2?,
}

local function TileSlot(props: Props)
	local controlState, setControlState = React.useState(ControlState.Initialize)
	local showBorder, setShowBorder = React.useState(false)

	local onActivated = React.useCallback(function()
		props.onActivated(props.index)
	end, { props.onActivated :: any, props.index })

	local onStateChanged = React.useCallback(function(oldState, newState)
		setControlState(newState)

		if newState == ControlState.Hover then
			setShowBorder(true)
		else
			setShowBorder(false)
		end

		if props.onStateChanged then
			props.onStateChanged(oldState, newState)
		end
	end, { props.onStateChanged })

	local style = useStyle()

	local isDisabled = props.isDisabled
	local isLoading = props.isLoading
	local currentState = isDisabled and ControlState.Disabled or controlState
	local isSelected = props.isSelected
	local hasBorder = showBorder or isSelected

	local borderStyle = isSelected and getContentStyle(BORDER_STATE_COLOR_MAP_ON, currentState, style)
		or getContentStyle(BORDER_STATE_COLOR_MAP_OFF, currentState, style)
	local textStyle = isSelected and getContentStyle(TEXT_STATE_COLOR_MAP_ON, currentState, style)
		or getContentStyle(TEXT_STATE_COLOR_MAP_OFF, currentState, style)
	local imageStyle = getContentStyle(IMAGE_STATE_COLOR_MAP, currentState, style)

	local backgroundStyleEmpty = isSelected and getContentStyle(BG_EMPTY_COLOR_MAP_ON, currentState, style)
		or getContentStyle(BG_EMPTY_COLOR_MAP_OFF, currentState, style)
	local backgroundStyleFilled = getContentStyle(BG_FILLED_COLOR_MAP, currentState, style)
	local fontStyle = style.Font.SubHeader1
	local thumbnail = props.thumbnail

	local isFilledMode = props.thumbnail ~= nil
	local isEmptyMode = props.displayText ~= nil
	local nonInteractable = isDisabled or isLoading
	if nonInteractable then
		hasBorder = false
	end

	return React.createElement(Interactable, {
		Size = UDim2.fromOffset(DEFAULT_SLOT_SIZE, DEFAULT_SLOT_SIZE),
		Position = props.position or UDim2.fromScale(0, 0),
		BackgroundTransparency = 1,
		onStateChanged = onStateChanged,
		[React.Event.Activated] = not nonInteractable and onActivated or nil,
	}, {
		Button = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			Background = React.createElement(ImageSetComponent.Label, {
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0, 0),
				BackgroundTransparency = 1,
				Image = BACKGROUND_IMAGE,
				ImageColor3 = isEmptyMode and backgroundStyleEmpty.Color or backgroundStyleFilled.Color,
				ImageTransparency = isEmptyMode and backgroundStyleEmpty.Transparency
					or backgroundStyleFilled.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(4, 4, 5, 5),
				ZIndex = 1,
			}),

			Border = if hasBorder
				then React.createElement(ImageSetComponent.Label, {
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.fromScale(0, 0),
					BackgroundTransparency = 1,
					Image = BORDER_IMAGE,
					ImageColor3 = borderStyle.Color,
					ImageTransparency = borderStyle.Transparency,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(4, 4, 5, 5),
					ZIndex = 2,
				})
				else nil,

			ButtonContentLayer = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0, 0),
				BackgroundTransparency = 1,
				ZIndex = 3,
			}, {
				Thumbnail = if not isLoading and isFilledMode
					then React.createElement(ImageSetComponent.Label, {
						Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						Image = thumbnail,
						ImageColor3 = imageStyle.Color,
						ImageTransparency = imageStyle.Transparency,
						ZIndex = 3,
					})
					else nil,

				Text = if not isLoading and isEmptyMode
					then React.createElement(GenericTextLabel, {
						Size = UDim2.new(1, -INNER_PADDING * 2, 1, -INNER_PADDING * 2),
						BackgroundTransparency = 1,
						Text = props.displayText,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						fontStyle = fontStyle,
						colorStyle = textStyle,
						ZIndex = 3,
					})
					else nil,

				LoadingShimmer = if isLoading
					then React.createElement(ShimmerPanel, {
						Size = UDim2.fromScale(1, 1),
					})
					else nil,
			}),
		}),
	})
end

return TileSlot
