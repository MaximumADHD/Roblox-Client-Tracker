--[[
	A single line (for now) text input box.

	Provides options for controlling tab behavior, formatting and validating
	input, and customizing the text input contents with leading and trailing
	components.

	Optional Props:
		boolean AllowTab: Whether to allow tab characters in input text.
		Vector2 AnchorPoint: The anchor point of the component.
		Color3 BackgroundColor: Background color for the component.
		Color3 BorderColor: Border color for the component.
		boolean ClearTextOnFocus: Whether clicking on the component will clear its text.
		boolean Disabled: Whether the input is editable.
		number LayoutOrder: The layout order of the component.
		any LeadingComponent: A component to render before the text box.
		table LeadingComponentProps: A table of props which are passed from the table's props to the LeadingComponent.
		callback OnFocused: Callback fired when the component is focused.
		callback OnFocusLost: Callback fired when the focus is lost.
		callback OnFormatText: Callback fired when text changes to format the text.
		callback OnTextChanged: Callback fired when the text has changed.
		callback OnValidateText: Callback fired when text changes to validate the text.
		string PlaceholderText: Placeholder text to show when the input is empty.
		UDim2 Position: The position of the component.
		UDim2 Size: The size of the component.
		Style Style: The style with which to render the component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		string Text: Text to populate the input with.
		boolean TextWrapped: If the Text should be wrapped to the next line.
		any TrailingComponent: A component to render after the text box.
		table TrailingComponentProps: A table of props which are passed from the table's props to the TrailingComponent.
		any Width: The width of the component. This can be a number or UDim.

	Style Values:
		Color3 BackgroundColor: Background color for the component.
		Color3 BorderColor: Border color for the component.
		table BottomText: Style table for the bottom text TextLabel.
		number BottomTextSpacing: The spacing between the text box and bottom text.
		number ExtraComponentSpacing: The spacing between the text box and leading and trailing components.
		Enum.Font Font: The font used to render the text.
		number LineHeight: The line height for the component.
		any Padding: Padding values for the text box. This can be a number or
			table with Left, Top, Right, and Bottom values.
		Color3 PlaceholderTextColor: Color of the placeholder text.
		any Width: The width of the component. This can be a number or UDim.
]]
local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTextInput2")

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local Typecheck = Util.Typecheck
local prioritize = Util.prioritize

local Pane = require(Framework.UI.Pane)
local TextBox = require(Framework.UI.TextInput2.TextBox)
local TextLabel = require(Framework.UI.TextLabel)
local StyleModifier = require(Framework.Util.StyleModifier)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local function getBottomText(props, state)
	return prioritize(state.errorText, props.ErrorText, props.BottomText)
end

local function isEmpty(text)
	return not text or #text == 0
end

local TextInput2 = Roact.PureComponent:extend("TextInput2")
Typecheck.wrap(TextInput2, script)

TextInput2.defaultProps = {
	AllowTab = false,
	Disabled = false,
	ClearTextOnFocus = false,
	LeadingComponentProps = {},
	PlaceholderText = "",
	Style = "BorderBox",
	Text = "",
	TextWrapped = false,
	TrailingComponentProps = {},
}

function TextInput2:init(initialProps)
	assert(FFlagDevFrameworkTextInput2, "TextInput2 requires FFlagDevFrameworkTextInput2")

	self.textBoxRef = initialProps[Roact.Ref] or Roact.createRef()
	self.restoreCursorPosition = nil

	self.state = {
		isError = false,
		isFocused = false,
		isHovered = false,
	}

	self.mouseEnter = function()
		self:setState({
			isHovered = true
		})
	end

	self.mouseLeave = function()
		self:setState({
			isHovered = false
		})
	end

	self.focused = function()
		self:setState({
			isFocused = true
		})
		if self.props.OnFocused then
			self.props.OnFocused()
		end
	end

	self.focusLost = function()
		self:setState({
			isFocused = false
		})
		if self.props.OnFocusLost then
			self.props.OnFocusLost()
		end
	end

	self.textChanged = function(text: string)
		local textBox = self.textBoxRef.current
		if not textBox then
			return
		end

		if self.props.OnFormatText then
			local original = text
			text = self.props.OnFormatText(text)
			if original ~= text then
				textBox.Text = text
			end
		end

		local isValid = self:_validateText(text)
		if self.props.OnTextChanged then
			self.props.OnTextChanged(text, isValid)
		end
	end
end

function TextInput2:willUpdate(nextProps, nextState)
	local textBox = self.textBoxRef.current

	if textBox and textBox:IsFocused() then
		local bottomText = getBottomText(self.props, self.state)
		local nextBottomText = getBottomText(nextProps, nextState)

		if isEmpty(bottomText) ~= isEmpty(nextBottomText) then
			-- In order to render a minimal Roact tree, component key stability
			-- is not maintained when bottom text is added or removed. As a result
			-- the TextBox will be rerendered, causing the cursror position to
			-- be lost. In this case, record the cursor position so that it can
			-- ne restored after the update.
			self.restoreCursorPosition = textBox.CursorPosition
		end
	end
end

function TextInput2:didUpdate(previousProps, previousState)
	if self.restoreCursorPosition ~= nil then
		local textBox = self.textBoxRef.current
		if textBox then
			textBox:CaptureFocus()
			textBox.CursorPosition = self.restoreCursorPosition
			self.restoreCursorPosition = nil
		end
	end
end

function TextInput2:render()
	local props = self.props
	local state = self.state
	local style = props.Stylizer

	local bottomText = getBottomText(props, state)
	local hasBottomText = not isEmpty(bottomText)

	local textInput = self:_renderTextInput(hasBottomText)

	if hasBottomText then
		textInput = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = props.LayoutOrder,
			Spacing = style.BottomTextSpacing,
		}, {
			TextInput = textInput,
			BottomText = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				Style = style.BottomText,
				StyleModifier = state.StyleModifier,
				Text = bottomText,
			}),
		})
	end

	return textInput
end

function TextInput2:_getText()
	local textBox = self.textBoxRef.current
	if textBox then
		return textBox.Text
	else
		return self.props.Text
	end
end

function TextInput2:_renderTextInput(hasBottomText)
	local props = self.props
	local style = props.Stylizer

	local backgroundColor = prioritize(props.BackgroundColor, style.BackgroundColor)
	local borderColor = prioritize(props.BorderColor, style.BorderColor)
	local size = prioritize(props.Size, style.Size)
	local width = prioritize(props.Width, style.Width)

	if typeof(width) == "number" then
		size = UDim2.new(UDim.new(0, width), size.Y)
	elseif typeof(width) == "UDim" then
		size = UDim2.new(width, size.Y)
	end

	local layoutOrderIterator = LayoutOrderIterator.new()

	local function renderExtraComponent(component, props)
		if component then
			return Roact.createElement(component, join(props, {
				BackgroundColor = Color3.new(0, 0, 1),
				BackgroundTransparency = 0,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
			}))
		end
		return nil
	end

	local hasExtraComponent = props.LeadingComponent or props.TrailingComponent
	local textBoxSize
	if hasExtraComponent then
		local extraWidth = 0
		if props.LeadingComponent then
			if props.LeadingComponentProps.Size then
				extraWidth += props.LeadingComponentProps.Size.X.Offset
			end
			extraWidth += style.ExtraComponentSpacing
		end
		if props.TrailingComponent then
			if props.TrailingComponentProps.Size then
				extraWidth += props.TrailingComponentProps.Size.X.Offset
			end
			extraWidth += style.ExtraComponentSpacing
		end
		textBoxSize = UDim2.new(1, -extraWidth, 1, 0)
	else
		textBoxSize = UDim2.fromScale(1, 1)
	end

	return Roact.createElement(Pane, {
		BackgroundColor = backgroundColor,
		BorderColor = borderColor,
		ClipsDescendants = true,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = hasBottomText and 1 or props.LayoutOrder,
		Padding = style.Padding,
		Size = size,
		Spacing = hasExtraComponent and style.ExtraComponentSpacing or nil,
		Style = props.Style,

		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}, {
		LeadingComponent = renderExtraComponent(props.LeadingComponent, props.LeadingComponentProps),

		TextBox = Roact.createElement(TextBox, {
			AllowTab = props.AllowTab,
			ClearTextOnFocus = props.ClearTextOnFocus,
			Disabled = props.Disabled,
			Font = style.Font,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LineHeight = style.LineHeight,
			PlaceholderText = props.PlaceholderText,
			PlaceholderTextColor = style.PlaceholderTextColor,
			Size = textBoxSize,
			Text = self:_getText(),
			TextColor = style.TextColor,
			TextSize = style.TextSize,
			TextWrapped = false,
			TextXAlignment = style.TextXAlignment,
			TextYAlignment = style.TextYAlignment,

			OnFocused = self.focused,
			OnFocusLost = self.focusLost,
			OnTextChanged = self.textChanged,

			[Roact.Ref] = self.textBoxRef,
		}),

		TrailingComponent = renderExtraComponent(props.TrailingComponent, props.TrailingComponentProps),
	})
end

function TextInput2:_validateText(text: string)
	if self.props.OnValidateText then
		local isValid, errorText = self.props.OnValidateText(text)
		self:setState({
			isError = not isValid,
			errorText = errorText or Roact.None,
		})
		return isValid
	end
	return true
end

function TextInput2.getDerivedStateFromProps(nextProps, prevState)
	local styleModifier
	if nextProps.Disabled then
		styleModifier = StyleModifier.Disabled
	elseif prevState.isError or nextProps.Error or not isEmpty(nextProps.ErrorText) then
		styleModifier = StyleModifier.Error
	elseif prevState.isFocused then
		styleModifier = StyleModifier.Selected
	elseif prevState.isHovered then
		styleModifier = StyleModifier.Hover
	end

	if styleModifier ~= prevState.StyleModifier then
		return {
			StyleModifier = styleModifier or Roact.None
		}
	else
		return nil
	end
end

TextInput2 = withContext({
	Stylizer = ContextServices.Stylizer,
})(TextInput2)

return TextInput2
