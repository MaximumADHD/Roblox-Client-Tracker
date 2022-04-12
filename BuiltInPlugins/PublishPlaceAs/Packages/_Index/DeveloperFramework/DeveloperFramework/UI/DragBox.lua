--[[
	A box in which one can drag a knob around to allow selection of a Vector2 value.

	Required Props:
		number MinX: Min x value of the dragBox
		number MaxX: Max x value of the dragBox
		
		number MinY: Min y value of the dragBox
		number MaxY: Max y value of the dragBox
		Vector2 Value: Current value for the knob
		callback OnValueChanged: The callback is called whenever the value changes - OnValueChanged(Value: Vector2)
		Mouse Mouse: A Mouse ContextItem, which is provided via withContext.

	Optional Props:
		callback OnChangeBegan: A function that is called when the user starts interacting
			with this ui element before changing properties. Used to dispatch AddWaypoint for History.	
		callback OnRightClick: A callback for when the user right-clicks on this ui element.
		string Tooltip: A text string which when passed in is displayed as tooltip when hovering over the ui element
		Vector2 AnchorPoint: The anchorPoint of the component
		boolean Disabled: Whether to render in the enabled/disabled state
		number LayoutOrder: The layoutOrder of the component
		UDim2 Position: The position of the component
		UDim2 Size: The size of the component
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		number HorizontalDragTolerance: A horizontal pixel width for allowing a mouse button press to drag knobs on outside the component's size.
		number VerticalDragTolerance: A vertical pixel height for allowing a mouse button press to drag knobs on outside the component's size.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]
local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local Typecheck = Util.Typecheck
local prioritize = Util.prioritize
local StyleModifier = Util.StyleModifier
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local UI = Framework.UI
local Container = require(UI.Container)
local Pane = require(UI.Pane)
local HoverArea = require(UI.HoverArea)
local Tooltip = require(UI.Tooltip)

local DragBox = Roact.PureComponent:extend("DragBox")
Typecheck.wrap(DragBox, script)

DragBox.defaultProps = {
	Disabled = false,
	MinX = -1,
	MinY = -1,
	MaxX = 1,
	MaxY = 1,	
	HorizontalDragTolerance = 300,
	VerticalDragTolerance = 300,
}

local isInputMainPress = Util.isInputMainPress

function DragBox:init()

	self.dragBoxFrameRef = Roact.createRef()

	self.state = {
		pressed = false,
	}
	
	self.getTotalRange = function()
		local range = Vector2.new( self.props.MaxX - self.props.MinX , self.props.MaxY - self.props.MinY) 
		return range
	end

	self.getClampedValue = function(value)
		local minX = self.props.MinX
		local maxX = self.props.MaxX
		local minY = self.props.MinY
		local maxY = self.props.MaxY
		return Vector2.new( math.clamp(value.X, minX, maxX), math.clamp(value.Y, minY, maxY))
	end

	self.getMouseClickValue = function(input)
		local dragBoxFrameRef = self.dragBoxFrameRef:getValue()

		local xValueBeforeClamping = 0
		local yValueBeforeClamping = 0
		local valueBeforeClamping = Vector2.new(0, 0)
		
		local positionXRelative = input.Position.X - dragBoxFrameRef.AbsolutePosition.X
		local inputHorizontalOffsetNormalized = positionXRelative / dragBoxFrameRef.AbsoluteSize.X
		inputHorizontalOffsetNormalized = math.clamp(inputHorizontalOffsetNormalized, 0, 1)
		xValueBeforeClamping = self.props.MinX + (inputHorizontalOffsetNormalized * self.getTotalRange().X)
		
		local positionYRelative = input.Position.Y - dragBoxFrameRef.AbsolutePosition.Y
		local inputVerticalOffsetNormalized = positionYRelative / dragBoxFrameRef.AbsoluteSize.Y
		inputVerticalOffsetNormalized = math.clamp(inputVerticalOffsetNormalized, 0, 1)
		yValueBeforeClamping = self.props.MinY + (inputVerticalOffsetNormalized * self.getTotalRange().Y)		

		valueBeforeClamping = Vector2.new(xValueBeforeClamping, yValueBeforeClamping)

		return self.getClampedValue(valueBeforeClamping)
	end

	self.setValuesFromInput = function(input)
		local mouseClickValue = self.getMouseClickValue(input)
		self.props.OnValueChanged(mouseClickValue)
	end

	self.onInputBegan = function(rbx, input)
		local isMainPress = isInputMainPress(input)
		if self.props.Disabled then
			return
		elseif isMainPress then
			self:setState({
				pressed = true,
			})
			if self.props.OnChangeBegan then
				self.props.OnChangeBegan()
			end
			self.setValuesFromInput(input)
		end
	end

	self.onInputChanged = function(rbx, input)
		if self.props.Disabled then
			return

		elseif self.state.pressed and input.UserInputType == Enum.UserInputType.MouseMovement then
			self.setValuesFromInput(input)
		end
	end

	self.onInputEnded = function(rbx, input)
		local isMainPress = isInputMainPress(input)
		if not self.props.Disabled and isMainPress then
			self:setState({
				pressed = false,
			})
		end
	end
end

function DragBox:render()
	local props = self.props
	local theme = props.Theme
	local style
	if THEME_REFACTOR then
		style = props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end	
	local tooltipText = props.Tooltip or nil
	local hasTooltip = tooltipText ~= nil and tooltipText ~= ""
	local anchorPoint = props.AnchorPoint
	local isDisabled = props.Disabled
	local minX = props.MinX
	local minY = props.MinY
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local Value = props.Value
	local size = prioritize(props.Size, style.Size, UDim2.new(1, 0, 1, 0))
	local horizontalDragBuffer = props.HorizontalDragTolerance
	local verticalDragBuffer = props.VerticalDragTolerance
	local backgroundStyle = style.BackgroundStyle
	local outlineStyle = style.OutlineStyle

	local knobSize = style.KnobSize or Vector2.new()
	local knobBackground = style.KnobBackground
	local knobBackgroundStyle = style.KnobBackgroundStyle or {}

	local percentX = (Value.X - minX) / self.getTotalRange().X
	local percentY = (Value.Y - minY) / self.getTotalRange().Y

	local styleModifier
	if isDisabled then
		styleModifier = StyleModifier.Disabled
	end
	local onRightClick = props.OnRightClick

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = UDim2.new(UDim.new(size.X.Scale, size.X.Offset - knobSize.X), size.Y),
		[Roact.Ref] = self.dragBoxFrameRef,
	}, 
	{
		Border = Roact.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = outlineStyle.Color,
		}),	

		Background = Roact.createElement(Pane, {
			Style = backgroundStyle,
			StyleModifier = styleModifier,
			Size = UDim2.new(1, 0, 1, 0),
		}),

		Knob = Roact.createElement(Container, {
			Background = knobBackground,
			BackgroundStyle = knobBackgroundStyle,
			BackgroundStyleModifier = styleModifier,
			Position = UDim2.new(percentX, 0, percentY, 0),
			Size = UDim2.new(0, knobSize.X, 0, knobSize.Y),
			ZIndex = 3,
		}),
		Tooltip = hasTooltip and Roact.createElement(Tooltip, {
			MaxWidth = 1000,
			Text = tooltipText,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		ClickHandler = (not isDisabled) and Roact.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, self.state.pressed and horizontalDragBuffer or knobSize.X, 1, self.state.pressed and verticalDragBuffer or 0),
			ZIndex = 4,

			[Roact.Event.InputBegan] = self.onInputBegan,
			[Roact.Event.InputChanged] = self.onInputChanged,
			[Roact.Event.InputEnded] =  self.onInputEnded,
			[Roact.Event.MouseButton2Click] = onRightClick,
		}),
		HoverArea = (not isDisabled) and Roact.createElement(HoverArea, {
			Cursor = "PointingHand"
		}),
	})
end

DragBox = withContext({
	Mouse = ContextServices.Mouse,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})(DragBox)

return DragBox
