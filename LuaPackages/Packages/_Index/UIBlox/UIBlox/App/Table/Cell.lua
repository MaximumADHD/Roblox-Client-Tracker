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
local withSelectionCursorProvider = require(App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(App.SelectionImage.CursorKind)
local Interactable = require(Core.Control.Interactable)
local ControlState = require(Core.Control.Enum.ControlState)
local useCursorByType = require(App.SelectionCursor.useCursorByType)
local CursorType = require(App.SelectionCursor.CursorType)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local DISABLED_TRANSPARENCY = 0.5

local Cell = Roact.PureComponent:extend("Cell")
Cell.debugProps = enumerate("debugProps", {
	"controlState",
})

Cell.validateProps = t.strictInterface({
	-- The component as the head for the cell.
	head = t.table,
	-- The component as the tail for the cell.
	-- If it's not set, the cell is not interactable.
	tail = t.optional(t.table),
	-- The component as the customized background for the cell.
	background = t.optional(t.table),

	-- The LayoutOrder of the cell.
	layoutOrder = t.optional(t.union(t.integer, bindingValidator(t.number))),
	-- The Size of the cell.
	-- If it's no set, the cell will size itself to the parent container.
	size = t.optional(t.UDim2),
	-- The AnchorPoint of the cell.
	anchorPoint = t.optional(t.Vector2),
	-- The Position of the cell.
	position = t.optional(t.UDim2),
	horizontalPadding = t.optional(t.number),
	-- A Boolean value that determines whether the cell can be selected using a gamepad.
	selectable = t.optional(t.boolean),

	-- A Boolean value that determines whether the cell is disabled.
	isDisabled = t.optional(t.boolean),
	-- A Boolean value that determines whether the cell is interactable.
	userInteractionEnabled = t.optional(t.boolean),

	-- The state change callback for the cell.
	onStateChanged = t.optional(t.callback),
	-- Callback for the activated event of the cell.
	onActivated = t.optional(t.callback),
	-- Callback for the tapped event of the cell.
	onTouchTapped = t.optional(t.callback),

	-- Override the default controlState
	[Cell.debugProps.controlState] = t.optional(ControlState.isEnumValue),

	[Roact.Change.AbsolutePosition] = t.optional(t.callback),
	[Roact.Ref] = t.optional(t.union(t.callback, t.table)),
	forwardRef = t.optional(t.union(t.callback, t.table)),
	-- Selection cursor
	selectionCursor = if UIBloxConfig.migrateToNewSelectionCursor then t.optional(t.any) else nil,
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
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithProviders(style, getSelectionCursor)
		end)
	end)
end

function Cell:renderWithProviders(style, getSelectionCursor)
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
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Selectable = self.props.selectable,
		SelectionImageObject = if UIBloxConfig.migrateToNewSelectionCursor
			then self.props.selectionCursor
			else (getSelectionCursor and getSelectionCursor(CursorKind.RoundedRectNoInset)),

		isDisabled = isDisabled,
		onStateChanged = self.onStateChanged,
		userInteractionEnabled = interactionEnabled,
		[Roact.Event.Activated] = onActivated,
		[Roact.Event.TouchTap] = onTouchTapped,

		[Roact.Change.AbsolutePosition] = self.props[Roact.Change.AbsolutePosition],
		[Roact.Ref] = self.props.forwardRef,
	}, {
		CellBackground = Roact.createElement("Frame", {
			Size = size,
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			ZIndex = -1,
		}, {
			Background = background or Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = backgroundStyle.Color,
				BackgroundTransparency = backgroundStyle.Transparency,
				BorderSizePixel = 0,
			}),
			CellContent = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween,
				}),
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
					LayoutOrder = 1,
				}, {
					Head = head,
				}),
				CellTail = tail and Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.fromScale(1, 0.5),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					LayoutOrder = 2,
				}, {
					Tail = tail,
				}) or nil,
			}),
		}),
		DisabledMask = currentState == ControlState.Disabled and Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BorderSizePixel = 0,
			BackgroundColor3 = backgroundStyle.Color,
			BackgroundTransparency = DISABLED_TRANSPARENCY,
			ZIndex = 100,
		}) or nil,
	})
end

return Roact.forwardRef(function(props, ref)
	local selectionCursor = useCursorByType(CursorType.RoundedRectNoInset)
	if UIBloxConfig.migrateToNewSelectionCursor then
		props = Cryo.Dictionary.join({
			selectionCursor = selectionCursor,
		}, props)
	end
	return Roact.createElement(
		Cell,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
