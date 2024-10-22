--[[
	StateLayer provides universal interactivity and related UI effects for other components.
]]
local ControlRoot = script.Parent
local CoreRoot = ControlRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local useStyle = require(CoreRoot.Style.useStyle)
local useCursor = require(UIBloxRoot.App.SelectionCursor.useCursor)
local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)
local Interactable = require(ControlRoot.Interactable)
local ControlState = require(ControlRoot.Enum.ControlState)

export type ControlStateChangedCallback = Interactable.ControlStateChangedCallback
export type Affordance = "Background" | "Border" | "None"
export type StateStyle = "Standard" | "Inverse" | "Lighten" | "Darken"
export type Outset = {
	top: UDim,
	right: UDim,
	bottom: UDim,
	left: UDim,
}
export type Props = {
	-- AnchorPoint of the component. The default value is Vector2.new(0.5, 0.5).
	anchorPoint: Vector2?,
	-- Position of the component. The default value is UDim2.fromScale(0.5, 0.5).
	position: UDim2?,
	-- Size of the component. The default value is UDim2.fromScale(1.0, 1.0).
	size: UDim2?,
	-- LayoutOrder of the component.
	layoutOrder: number?,
	-- ZIndex of the component.
	zIndex: number?,
	-- Corner radius of the component.
	cornerRadius: UDim?,
	-- Whether user interaction is disabled. The default value is false.
	isDisabled: boolean?,
	-- Whether the component is selectable by cursor. The default value is true.
	selectable: boolean?,
	-- Type of the presentational affordance. The default value is "Background".
	affordance: Affordance?,
	-- Type of the state style. The default value is "Standard".
	stateStyle: StateStyle?,
	-- Outset parameters to extend the area for user interaction.
	-- It's not recommended to set outset in 10ft UI, otherwise the selection cursor will be enlarged.
	outset: Outset?,
	-- Callback function invoked when component's state is changed.
	onStateChanged: ControlStateChangedCallback?,
	-- Callback function invoked when component is activated.
	onActivated: (() -> ())?,
}

local defaultProps: Props = {
	anchorPoint = Vector2.new(0.5, 0.5),
	position = UDim2.fromScale(0.5, 0.5),
	size = UDim2.fromScale(1.0, 1.0),
	isDisabled = false,
	selectable = true,
	affordance = "Background" :: Affordance,
	stateStyle = "Standard" :: StateStyle,
	outset = {
		top = UDim.new(0, 0),
		right = UDim.new(0, 0),
		bottom = UDim.new(0, 0),
		left = UDim.new(0, 0),
	},
}

local AFFORDANCE_BACKGROUND = "Background" :: Affordance
local AFFORDANCE_BORDER = "Border" :: Affordance
local INIT_STATE_VALUE = ControlState.Initialize.rawValue()

local StateLayer = React.forwardRef(function(providedProps: Props, ref: React.Ref<Frame>)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)

	local componentTokens = useStyle().Tokens.Component.StateLayer
	local initColorItem = componentTokens[props.stateStyle][INIT_STATE_VALUE].Color
	local stateColor, setStateColor = React.useBinding(initColorItem.Color3)
	local stateTransparency, setStateTransparency = React.useBinding(initColorItem.Transparency)
	local cursor = useCursor(props.cornerRadius)

	local frameProps = {
		ref = ref,
		AnchorPoint = props.anchorPoint,
		Position = props.position,
		Size = props.size,
		LayoutOrder = props.layoutOrder,
		ZIndex = props.zIndex,
		BackgroundTransparency = 1,
	} :: any
	local frameChildren = {}
	-- corner style
	if props.cornerRadius ~= nil then
		frameChildren.UICorner = React.createElement("UICorner", {
			CornerRadius = props.cornerRadius,
		})
	end
	-- affordance style
	if props.affordance == AFFORDANCE_BORDER then
		frameChildren.UIStroke = React.createElement("UIStroke", {
			Thickness = componentTokens.Base.BorderWidth,
			Color = stateColor,
			Transparency = stateTransparency,
		})
		frameProps.BackgroundTransparency = 1
	elseif props.affordance == AFFORDANCE_BACKGROUND then
		frameProps.BackgroundColor3 = stateColor
		frameProps.BackgroundTransparency = stateTransparency
	end
	-- button
	local outset = props.outset
	local buttonSize = UDim2.new(
		1.0 + outset.left.Scale + outset.right.Scale,
		outset.left.Offset + outset.right.Offset,
		1.0 + outset.top.Scale + outset.bottom.Scale,
		outset.top.Offset + outset.bottom.Offset
	)
	local buttonPosition = UDim2.new(-outset.left.Scale, -outset.left.Offset, -outset.top.Scale, -outset.top.Offset)
	local onStateChanged = React.useCallback(function(oldState, newState)
		local colorItem = componentTokens[props.stateStyle][newState.rawValue()].Color
		setStateColor(colorItem.Color3)
		setStateTransparency(colorItem.Transparency)
		if props.onStateChanged then
			props.onStateChanged(oldState, newState)
		end
	end, { componentTokens, setStateColor, setStateTransparency, props.stateStyle, props.onStateChanged } :: { any })
	frameChildren.Button = React.createElement(Interactable, {
		Size = buttonSize,
		Position = buttonPosition,
		BackgroundTransparency = 1,
		Selectable = not props.isDisabled and props.selectable,
		SelectionImageObject = cursor,
		[React.Event.Activated] = props.onActivated,
		onStateChanged = onStateChanged,
		isDisabled = props.isDisabled,
		userInteractionEnabled = not props.isDisabled,
	})

	return React.createElement("Frame", frameProps, frameChildren)
end)

if UIBloxConfig.enableAppNavUpdate then
	-- Memo this to reduce unnecessary re-rendering
	return React.memo(StateLayer)
else
	return StateLayer
end
