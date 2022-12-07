local Table = script.Parent
local App = Table.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local Roact = require(Packages.Roact)
local enumerate = require(Packages.enumerate)
local bindingValidator = require(Core.Utility.bindingValidator)

local withStyle = require(Core.Style.withStyle)
local Interactable = require(Core.Control.Interactable)
local ControlState = require(Core.Control.Enum.ControlState)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)

local DISABLED_TRANSPARENCY = 0.5

local Cell = Roact.PureComponent:extend("Cell")
Cell.debugProps = enumerate("debugProps", {
	"controlState",
})

Cell.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.union(t.integer, bindingValidator(t.number))),
	size = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	horizontalPadding = t.optional(t.number),

	isDisabled = t.optional(t.boolean),
	userInteractionEnabled = t.optional(t.boolean),

	onStateChanged = t.optional(t.callback),
	onActivated = t.optional(t.callback),
	onTouchTapped = t.optional(t.callback),

	head = t.table,
	tail = t.optional(t.table),
	background = t.optional(t.table),

	-- Override the default controlState
	[Cell.debugProps.controlState] = t.optional(enumerateValidator(ControlState)),

	[Roact.Change.AbsolutePosition] = t.optional(t.callback),
	[Roact.Ref] = t.optional(t.union(t.callback, t.table)),
	forwardRef = t.optional(t.union(t.callback, t.table)),
})

Cell.defaultProps = {
	isDisabled = false,
	userInteractionEnabled = true,
	horizontalPadding = 24,
}

function Cell:init()
	self:setState({
		controlState = ControlState.Initialize,
	})

	self.stateStyleMap = {
		[ControlState.Default] = "BackgroundDefault",
		[ControlState.Hover] = "BackgroundOnHover",
		[ControlState.Pressed] = "BackgroundOnPress",
	}

	self.getBackgroundStyle = function(controlState, style)
		local contentThemeClass = self.stateStyleMap[controlState] or self.stateStyleMap[ControlState.Default]

		local contentStyle = {
			Color = style.Theme[contentThemeClass].Color,
			Transparency = style.Theme[contentThemeClass].Transparency,
		}

		if controlState == ControlState.Disabled then
			-- make CellBackground transparent to let the whole component
			-- have the right color and transparency with DisabledMask
			contentStyle.Transparency = 1
		end
		return contentStyle
	end

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end
end

function Cell:render()
	return withStyle(function(style)
		local anchorPoint = self.props.anchorPoint
		local layoutOrder = self.props.layoutOrder
		local position = self.props.position
		local size = self.props.size
		if not size then
			size = UDim2.fromScale(1, 1)
		end

		local head = self.props.head
		local tail = self.props.tail
		local background = self.props.background

		local userInteractionEnabled = self.props.userInteractionEnabled
		local interactionEnabled = (tail and userInteractionEnabled) and true or false
		local isDisabled = self.props.isDisabled
		local onActivated = self.props.onActivated
		local onTouchTapped = self.props.onTouchTapped

		local currentState = self.props[Cell.debugProps.controlState] or self.state.controlState
		local backgroundStyle = self.getBackgroundStyle(currentState, style)

		return Roact.createElement(Interactable, {
			AnchorPoint = anchorPoint,
			LayoutOrder = layoutOrder,
			Position = position,
			Size = size,
			BackgroundTransparency = 1,
			AutoButtonColor = false,

			isDisabled = isDisabled,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = interactionEnabled,
			[Roact.Event.Activated] = onActivated,
			[Roact.Event.TouchTap] = onTouchTapped,

			[Roact.Change.AbsolutePosition] = self.props[Roact.Change.AbsolutePosition],
			[Roact.Ref] = self.props.forwardRef,
		}, {
			CellBackground = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = backgroundStyle.Color,
				BackgroundTransparency = backgroundStyle.Transparency,
				BorderSizePixel = 0,
				ZIndex = -1,
			}, {
				Background = background,
			}),
			CellContent = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, self.props.horizontalPadding),
					PaddingRight = UDim.new(0, self.props.horizontalPadding),
				}),
				CellHead = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.fromScale(0, 0.5),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
				}, {
					Head = head,
				}),
				CellTail = tail and Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.fromScale(1, 0.5),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
				}, {
					Tail = tail,
				}) or nil,
			}),
			DisabledMask = currentState == ControlState.Disabled and Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = backgroundStyle.Color,
				BackgroundTransparency = DISABLED_TRANSPARENCY,
				ZIndex = 100,
			}) or nil,
		})
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		Cell,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
