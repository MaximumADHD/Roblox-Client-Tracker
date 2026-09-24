--[[
	A single or multiline text input box.

	Provides options for controlling tab behavior, formatting and validating
	input, and customizing the text input contents with leading and trailing
	components.

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying Frame.
		boolean AllowTab: Whether to allow tab characters in input text.
		Vector2 AnchorPoint: The anchor point of the component.
		Enum.AutomaticSize AutomaticSize: The AutomaticSize of the component.
		Color3 BackgroundColor: Background color for the component.
		Color3 BorderColor: Border color for the component.
		any BottomComponent: A component to render beneath the text box.
		table BottomComponentProps: A table of props which are passed from the table's props to the BottomComponent.
		string BottomText: Secondary text to display below the input field.
		boolean ClearTextOnFocus: Whether clicking on the component will clear its text.
		boolean Disabled: Whether the input is editable.
		any DropdownMenuProps: A table of props which are passed from the table's props to the DropdownMenu.
		string ErrorText: Error text to display below the input field.
		callback GetAutocompleteItems: Return a list of autocomplete items to be chosen (text: string) -> { AutocompleteItem }?
		callback OnRenderAutocompleteItem: Pass a custom component to the autocomplete DropdownMenu for rendering each item.
			(item: AutocompleteItem, index: number, onActivated: () -> (), hovered: boolean)?
		any Height: The height of the component. This can be a number or UDim.
		number LayoutOrder: The layout order of the component.
		any LeadingComponent: A component to render before the text box.
		table LeadingComponentProps: A table of props which are passed from the table's props to the LeadingComponent.
		number MaxLength: Optionally display a character count below the input e.g. "20/1000". Overrides the BottomText prop.
		boolean MultiLine: Whether the input is multiline.
		callback OnEnter: Callback fired when Enter is pressed.
		callback OnFocused: Callback fired when the component is focused.
		callback OnFocusLost: Callback fired when the focus is lost.
		callback OnFormatText: Callback fired when text changes to format the text.
		callback OnTextChanged: Callback fired when the text has changed.
		callback OnValidateText: Callback fired when text changes to validate the text.
		string PlaceholderText: Placeholder text to show when the input is empty.
		UDim2 Position: The position of the component.
		boolean ShouldFocus: Whether the component is initially focused.
		UDim2 Size: The size of the component.
		Stylizer Stylizer: A Stylizer ContextItem (DEPRECATED)
		Style Style: The style with which to render the component. (DEPRECATED: Use React.Tag instead)
		string Text: Text to populate the input with.
		any TrailingComponent: A component to render after the text box.
		table TrailingComponentProps: A table of props which are passed from the table's props to the TrailingComponent.
		any Width: The width of the component. This can be a number or UDim.
		string PaneTags: Tags to apply to the wrapper Pane.
		boolean OverrideTags: Whether the tags passed to this component override the component's default tags
		StyleModifier StyleModifier: The StyleModifier index into Style. (DEPRECATED: Use React.Tag instead)

	Style Values:
		Color3 BackgroundColor: Background color for the component.
		Color3 BorderColor: Border color for the component.
		any BottomComponent: A component to render beneath the text box.
		table BottomComponentProps: A table of props which are passed from the table's props to the BottomComponent.
		table BottomText: Style table for the bottom text TextLabel.
		number BottomTextSpacing: The spacing between the text box and bottom text.
		Enum.Font Font: The font used to render the text.
		any LeadingComponent: A component to render before the text box.
		table LeadingComponentProps: A table of props which are passed from the table's props to the LeadingComponent.
		number LineHeight: The line height for the component.
		any Padding: Padding values for the text box. This can be a number or
			table with Left, Top, Right, and Bottom values.
		Color3 PlaceholderTextColor: Color of the placeholder text.
		any TrailingComponent: A component to render after the text box.
		table TrailingComponentProps: A table of props which are passed from the table's props to the TrailingComponent.
		any Width: The width of the component. This can be a number or UDim.
]]
local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil

local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)
local hasTag = require(Framework.Styling.hasTag)
local styles = require(script.styles)

local TEXT_SIZE = styles:GetAttribute("InputTextSize")
local COMPACT_TEXT_SIZE = styles:GetAttribute("CompactInputTextSize")
local DEFAULT_SIZE = styles:GetAttribute("Size")

local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)
local Typecheck = require(Framework.Util.Typecheck)
local prioritize = require(Framework.Util.prioritize)

local withForwardRef = require(Framework.Wrappers.withForwardRef)
local DropdownMenu = require(Framework.UI.Components.DropdownMenu)

local Pane = require(Framework.UI.Components.Pane)
local TextBox = require(Framework.UI.Components.TextInput.TextBox)
local TextLabel = require(Framework.UI.Components.TextLabel)
local ScrollingFrame = require(Framework.UI.Components.ScrollingFrame)
local StyleModifier = require(Framework.Util.StyleModifier)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local Types = require(Framework.Types)

local function getBottomText(props, state)
	local charCount = if props.MaxLength then utf8.len(props.Text) else nil
	local bottomText = if props.MaxLength then ("%d/%d"):format(charCount, props.MaxLength) else props.BottomText
	return prioritize(state.errorText, props.ErrorText, bottomText)
end

local function isEmpty(text)
	return not text or #text == 0
end

local function isEmptyTable(table)
	if not table then
		return true
	end
	return next(table) == nil
end

export type AutocompleteItem = {
	Id: string,
	Label: string,
	Value: string,
}

local TextInput = Roact.PureComponent:extend("TextInput")
Typecheck.wrap(TextInput, script)

TextInput.defaultProps = {
	AllowTab = false,
	BottomComponentProps = {},
	Disabled = false,
	DropdownMenuProps = {},
	ClearTextOnFocus = false,
	LeadingComponentProps = {},
	PlaceholderText = "",
	ShouldFocus = false,
	Style = if supportsStyleSheets then nil else "BorderBox",
	Text = "",
	TrailingComponentProps = {},
}

function TextInput:init()
	local props = self.props
	self.textBoxRef = props.ForwardRef or Roact.createRef()
	self.scrollingFrameRef = Roact.createRef()
	self.ref = Roact.createRef()

	self.state = {
		isError = false,
		isFocused = false,
		isHovered = false,
		autocompleteItems = {},
		autocompleteSelectedIndex = nil,
	}

	if not supportsStyleSheets then
		self.mouseEnter = function()
			if self.unmounted then
				return
			end
			self:setState({
				isHovered = true,
			})
		end

		self.mouseLeave = function()
			if self.unmounted then
				return
			end
			self:setState({
				isHovered = false,
			})
		end
	end

	self.updateAutocomplete = function(text: string)
		local COOLDOWN = 0.25
		if self.props.GetAutocompleteItems and self.autocompleteItemSelectTime + COOLDOWN < os.time() then
			local items = self.props.GetAutocompleteItems(text) or {}
			self:setState(function(state)
				local selectedIndex = if #items > 0 and state.autocompleteSelectedIndex
					then math.clamp(state.autocompleteSelectedIndex, 1, #items)
					else Roact.None

				return {
					autocompleteItems = items,
					autocompleteSelectedIndex = selectedIndex,
				}
			end)
		end
	end

	self.onDropdownFocusLost = function()
		if self.unmounted then
			return
		end

		self:setState({
			isFocused = false,
		})

		if self.props.OnFocusLost then
			local current = self.textBoxRef.current
			self.props.OnFocusLost(if current then current:GetStyled("Text") else nil, false)
		end
	end

	self.updateText = function(text: string)
		local textBox = self.textBoxRef.current
		if not textBox then
			return
		end

		if self.props.OnFormatText then
			local formatted = self.props.OnFormatText(text)
			if formatted ~= nil and formatted ~= text then
				textBox.Text = formatted
			end
		else
			textBox.Text = text
		end

		local isValid = self:_validateText(text)
		if self.props.OnTextChanged then
			self.props.OnTextChanged(text, isValid)
		end
	end

	self.focused = function()
		if self.unmounted then
			return
		end
		self:setState({
			isFocused = true,
		})
		if self.props.OnFocused then
			self.props.OnFocused()
		end

		local current = self.textBoxRef.current
		if current then
			self.updateAutocomplete(current:GetStyled("Text"))
		end
	end

	self.focusLost = function(_rbx, enterPressed, inputObject: InputObject)
		if self.unmounted then
			return
		end
		self:setState(function(state)
			if not state.isFocused then
				return {}
			end

			if inputObject and inputObject.UserInputType ~= Enum.UserInputType.Keyboard then
				if #state.autocompleteItems >= 1 then
					-- We likely clicked while dropdown is open, use its focus detector instead.
					-- Otherwise, setting isFocused = false will force it to unload without getting its Click or OnFocusLost event
					return {}
				end
			end

			if enterPressed then
				local item = nil
				local selectedIndex = state.autocompleteSelectedIndex

				if #state.autocompleteItems == 1 then
					item = state.autocompleteItems[1]
				elseif #state.autocompleteItems > 1 and selectedIndex then
					item = state.autocompleteItems[selectedIndex]
				end

				self.autocompleteItemSelected(item)
			end

			if self.props.OnFocusLost then
				local current = self.textBoxRef.current
				self.props.OnFocusLost(if current then current:GetStyled("Text") else nil, enterPressed)
			end

			return {
				isFocused = false,
			}
		end)
	end

	self.textChanged = function(text: string)
		self.updateText(text)
		self.updateAutocomplete(text)
	end

	self.autocompleteItemSelectTime = 0

	self.autocompleteItemSelected = function(item: AutocompleteItem)
		if not item then
			return
		end

		self.textChanged(item.Value)
	end

	self.autocompleteItemChanged = function(index: number)
		self:setState({
			autocompleteSelectedIndex = index,
		})
	end

	self.autocompleteMouseLeave = function()
		self:setState({
			autocompleteSelectedIndex = Roact.None,
		})
	end
end

function TextInput:_getStyleAndTags()
	local props = self.props
	local tags = if supportsStyleSheets then props[React.Tag] else nil
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	if supportsStyleSheets and typeof(style) == "string" then
		tags = joinTags(tags, style)
		style = {}
	end
	return style, tags
end

function TextInput:_getTextSize(style, tags)
	return if supportsStyleSheets
		then (if hasTag(tags, "Compact") then COMPACT_TEXT_SIZE else TEXT_SIZE)
		else (if style == nil then TEXT_SIZE else style.TextSize)
end

local SCROLLBAR_SIZE = 8

function TextInput:_getPositionAtIndex(index: number, scroller: ScrollingFrame)
	local currentY = scroller.CanvasPosition.Y
	local style, tags = self:_getStyleAndTags()

	local textSize = self:_getTextSize(style, tags)
	local sizeX = scroller.AbsoluteSize.X - SCROLLBAR_SIZE
	local sizeY = scroller.AbsoluteSize.Y
	local nextY = TextService:GetTextSize(
		string.sub(self.props.Text, 0, index - 1),
		textSize,
		Enum.Font.SourceSans,
		Vector2.new(sizeX, math.huge)
	).Y
	if nextY < currentY + textSize then
		return nextY - textSize
	elseif nextY > currentY + sizeY - textSize then
		return nextY - sizeY
	else
		return currentY
	end
end

function TextInput:_updateScroller(scroll: boolean)
	local props = self.props
	local scroller = self.scrollingFrameRef.current
	if not scroller or not props.MultiLine then
		return
	end
	local style, tags = self:_getStyleAndTags()

	local fontSize = self:_getTextSize(style, tags)
	local sizeX = scroller.AbsoluteSize.X - SCROLLBAR_SIZE
	local textBox = self.textBoxRef.current
	local textSize = TextService:GetTextSize(props.Text, fontSize, Enum.Font.SourceSans, Vector2.new(sizeX, math.huge))
	scroller.CanvasSize = UDim2.new(0, 0, 0, textSize.y)
	textBox.Size = UDim2.new(1, 0, 0, math.max(scroller.AbsoluteSize.Y, textSize.y))
	if scroll and textBox.CursorPosition >= 0 then
		scroller.CanvasPosition = Vector2.new(0, self:_getPositionAtIndex(textBox.CursorPosition, scroller))
	end
end

function TextInput:didMount()
	local props = self.props
	local isMultiLine = props.MultiLine
	local textBox = self.textBoxRef.current
	if isMultiLine and textBox then
		self.cursorChangeSignal = textBox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
			self:_updateScroller(true)
		end)
	end

	if props.ShouldFocus and textBox then
		textBox:CaptureFocus()
	end
end

function TextInput:willUnmount()
	self.unmounted = true

	if self.cursorChangeSignal then
		self.cursorChangeSignal:Disconnect()
	end
end

function TextInput:didUpdate(previousProps, previousState)
	local props = self.props
	local state = self.state

	local textBox = self.textBoxRef.current
	if not textBox then
		return
	end

	if props.ShouldFocus and not previousProps.ShouldFocus then
		textBox:CaptureFocus()
	end

	if previousProps.OnValidateText ~= props.OnValidateText then
		self:_validateText(props.Text)
	end

	local isMultiLine = props.MultiLine
	if isMultiLine then
		local cursorChanged = previousProps.Text ~= props.Text or textBox.CursorPosition ~= previousProps.CursorPosition
		self:_updateScroller(cursorChanged)
	end

	if previousState.autocompleteItems and not state.autocompleteItems then
		self.focusLost()
	end
end

function TextInput:_exceedsMaxLength()
	local props = self.props
	return props.MaxLength and utf8.len(props.Text) > props.MaxLength
end

function TextInput:hasError()
	local state = self.state
	local props = self.props
	return if supportsStyleSheets
		then self:_exceedsMaxLength() or state.isError or hasTag(props[React.Tag], "Error") or not isEmpty(
			props.ErrorText
		)
		else props.StyleModifier == StyleModifier.Error
end

function TextInput:render()
	local props = self.props
	local state = self.state
	local style, tags = self:_getStyleAndTags()

	local bottomText = getBottomText(props, state)
	local hasBottomText = not isEmpty(bottomText)
	local hasError = self:hasError()

	local automaticSize = Enum.AutomaticSize.XY

	if props.AutomaticSize then
		automaticSize = props.AutomaticSize
	end

	local children = {
		TextInput = self:_renderTextInput(hasBottomText),
	}
	if hasBottomText then
		local textStyle = if hasError then "Error" else (if supportsStyleSheets then "Label" else style.BottomText)
		children.BottomText = Roact.createElement(
			TextLabel,
			if supportsStyleSheets
				then {
					LayoutOrder = 2,
					Text = bottomText,
					[React.Tag] = joinTags(textStyle, "X-Fit Wrap"),
				}
				else {
					AutomaticSize = Enum.AutomaticSize.XY,
					LayoutOrder = 2,
					Style = textStyle,
					StyleModifier = state.StyleModifier,
					Text = bottomText,
					TextWrapped = true,
				}
		)
	end

	if state.autocompleteItems and #state.autocompleteItems > 0 then
		local width = props.Width
		if not width and self.ref then
			width = self.ref.current.AbsoluteSize.X
		end
		local hoveredItemIndex
		if #state.autocompleteItems == 1 then
			hoveredItemIndex = 1
		else
			hoveredItemIndex = state.autocompleteSelectedIndex
		end
		local autocompleteProps = join({
			Items = state.autocompleteItems,
			OnHoveredItemChanged = self.autocompleteItemChanged,
			OnMouseLeave = self.autocompleteMouseLeave,
			Hide = not state.isFocused,
			HoveredItemIndex = hoveredItemIndex,
			Width = width,
			Position = props.Position,
			OnItemActivated = self.autocompleteItemSelected,
			OnFocusLost = self.onDropdownFocusLost,
			OnRenderItem = props.OnRenderAutocompleteItem,
		}, props.DropdownMenuProps)
		children.AutocompleteDropdown = Roact.createElement(DropdownMenu, autocompleteProps)
	end

	local spacing = if hasBottomText then style.BottomTextSpacing else 0
	local textInputProps

	if supportsStyleSheets then
		textInputProps = {
			AnchorPoint = props.AnchorPoint,
			AutomaticSize = automaticSize,
			LayoutOrder = props.LayoutOrder,
			Position = props.Position,
			Size = self:_getSize(),
			[Roact.Ref] = self.ref,
			[React.Tag] = if props.OverrideTags
				then props[React.Tag] or joinTags("Component-TextInput", "X-Left X-Top X-ColumnS", tags)
				else joinTags("Component-TextInput", "X-Left X-Top X-ColumnS", tags),
		}
	else
		textInputProps = {
			AnchorPoint = props.AnchorPoint,
			AutomaticSize = automaticSize,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = props.LayoutOrder,
			Position = props.Position,
			[Roact.Ref] = self.ref,
			Spacing = spacing,
			-- The minimum size of the component must be at least what is passed in
			Size = self:_getSize(),
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}
	end

	return Roact.createElement(Pane, textInputProps, children)
end

function TextInput:_getSize()
	local props = self.props
	local style = self:_getStyleAndTags()

	local size = prioritize(props.Size, style.Size) or DEFAULT_SIZE
	local width = prioritize(props.Width, style.Width)
	local height = prioritize(props.Height, style.Height)

	if typeof(width) == "number" then
		size = UDim2.new(UDim.new(0, width), size.Y)
	elseif typeof(width) == "UDim" then
		size = UDim2.new(width, size.Y)
	end
	if typeof(height) == "number" then
		size = UDim2.new(size.X, UDim.new(0, height))
	elseif typeof(height) == "UDim" then
		size = UDim2.new(size.X, height)
	end

	return size
end

local function getLeadingComponent(props): (Types.RoactComponent<any>?, {}?)
	local style = if supportsStyleSheets then nil else props.Stylizer
	local component = if supportsStyleSheets
		then props.LeadingComponent
		else prioritize(props.LeadingComponent, style.LeadingComponent)
	local componentProps = props.LeadingComponentProps
	if not supportsStyleSheets and isEmptyTable(componentProps) and not isEmptyTable(style.LeadingComponentProps) then
		componentProps = style.LeadingComponentProps
	end
	return component, componentProps
end

local function getTrailingComponent(props): (Types.RoactComponent<any>?, {}?)
	local style = if supportsStyleSheets then nil else props.Stylizer
	local component = if supportsStyleSheets
		then props.TrailingComponent
		else prioritize(props.TrailingComponent, style.TrailingComponent)
	local componentProps = props.TrailingComponentProps
	if not supportsStyleSheets and isEmptyTable(componentProps) and not isEmptyTable(style.TrailingComponentProps) then
		componentProps = style.TrailingComponentProps
	end
	return component, componentProps
end

local function getBottomComponent(props): (Types.RoactComponent<any>?, {}?)
	local style = if supportsStyleSheets then {} else props.Stylizer
	local component = if supportsStyleSheets
		then props.BottomComponent
		else prioritize(props.BottomComponent, style.BottomComponent)
	local componentProps = props.BottomComponentProps
	if not supportsStyleSheets and isEmptyTable(componentProps) and not isEmptyTable(style.BottomComponentProps) then
		componentProps = style.BottomComponentProps
	end
	return component, componentProps
end

function TextInput:_renderTextInput(hasBottomText)
	local props = self.props
	local style = if supportsStyleSheets then {} else props.Stylizer
	local styleModifier = self.state.StyleModifier
	local layoutOrderIterator = LayoutOrderIterator.new()

	local leadingComponent, leadingComponentProps = getLeadingComponent(props)
	local trailingComponent, trailingComponentProps = getTrailingComponent(props)
	local bottomComponent, bottomComponentProps = getBottomComponent(props)

	local function renderExtraComponent(component: Types.RoactComponent<any>?, props: {}?): Types.RoactElement?
		if component then
			return Roact.createElement(
				component,
				join(props, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					StyleModifier = styleModifier,
				})
			)
		end
		return nil
	end

	local horizontalSpacing = 0
	local verticalSpacing = 0
	if leadingComponent or trailingComponent or bottomComponent then
		horizontalSpacing = (
			if supportsStyleSheets
				then styles:GetAttribute("HorizontalComponentSpacing")
				else style.HorizontalComponentSpacing
		) or 0
		verticalSpacing = (
			if supportsStyleSheets
				then styles:GetAttribute("VerticalComponentSpacing")
				else style.VerticalComponentSpacing
		) or 0
	end
	-- Return the size of the TextBox component, which will be the width and height
	-- of the parent, minus space needed for leading, trailing, and bottom components.
	local function calculateTextBoxSize(): UDim2
		if leadingComponent or trailingComponent or bottomComponent then
			local offsetX = 0
			local offsetY = 0

			if leadingComponent then
				offsetX += horizontalSpacing
				if leadingComponentProps.Size then
					offsetX += leadingComponentProps.Size.X.Offset
				end
			end
			if trailingComponent then
				offsetX += horizontalSpacing
				if trailingComponentProps.Size then
					offsetX += trailingComponentProps.Size.X.Offset
				end
			end
			if bottomComponent then
				offsetY += verticalSpacing
				if bottomComponentProps.Size then
					offsetY += bottomComponentProps.Size.Y.Offset
				end
			end

			return UDim2.new(1, -offsetX, 1, -offsetY)
		else
			return UDim2.fromScale(1, 1)
		end
	end

	local isMultiLine = props.MultiLine

	-- Render the text box element, which will be a TextBox or a ScrollingFrame with
	-- a TextBox inside depending on the isMultiline prop.
	local function renderTextBox(): Types.RoactComponent<TextBox>
		local textXAlignment = prioritize(props.TextXAlignment, style.TextXAlignment)
		local defaultTextYAlignment = if isMultiLine then Enum.TextYAlignment.Top else nil
		local textYAlignment = prioritize(props.TextYAlignment, style.TextYAlignment, defaultTextYAlignment)
		local textBoxSize = calculateTextBoxSize()

		local layoutOrder = layoutOrderIterator:getNextOrder()

		local textBox = Roact.createElement(TextBox, {
			AllowTab = props.AllowTab,
			ClearTextOnFocus = props.ClearTextOnFocus,
			Disabled = props.Disabled,
			Font = style.Font,
			LayoutOrder = if isMultiLine then nil else layoutOrder,
			LineHeight = style.LineHeight,
			MultiLine = isMultiLine,
			OnEnter = props.OnEnter,
			PlaceholderText = props.PlaceholderText,
			PlaceholderTextColor = style.PlaceholderTextColor,
			Size = textBoxSize,
			Text = props.Text,
			TextColor = style.TextColor,
			TextSize = style.TextSize,
			TextWrapped = isMultiLine,
			TextXAlignment = textXAlignment,
			TextYAlignment = textYAlignment,
			OnFocused = self.focused,
			OnFocusLost = self.focusLost,
			OnTextChanged = self.textChanged,
			[Roact.Ref] = self.textBoxRef,
		})

		if isMultiLine then
			return Roact.createElement(ScrollingFrame, {
				LayoutOrder = layoutOrder,
				Size = textBoxSize,
				[Roact.Ref] = self.scrollingFrameRef,
			}, {
				TextBox = textBox,
			})
		else
			return textBox
		end
	end

	-- Render components in order to ensure correct LayoutOrder sequence
	local leadingContent = renderExtraComponent(leadingComponent, leadingComponentProps)
	local textBox = renderTextBox()
	local trailingContent = renderExtraComponent(trailingComponent, trailingComponentProps)

	local children = {
		LeadingContent = leadingContent,
		TextBox = textBox,
		TrailingContent = trailingContent,
	}

	local fillDirection = Enum.FillDirection.Horizontal
	local spacing = horizontalSpacing

	if bottomComponent then
		local textBoxContent = textBox
		if leadingComponent or trailingComponent then
			textBoxContent = Roact.createElement(
				Pane,
				if supportsStyleSheets
					then Dash.join({
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					}, { Layout = Enum.FillDirection.Horizontal, Spacing = horizontalSpacing })
					else {
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Spacing = style.HorizontalComponentSpacing,
					},
				{
					LeadingContent = leadingContent,
					TextBox = textBox,
					TrailingContent = trailingContent,
				}
			)
		end

		fillDirection = Enum.FillDirection.Vertical
		spacing = verticalSpacing
		children = {
			TextBoxContent = textBoxContent,
			BottomContent = renderExtraComponent(bottomComponent, bottomComponentProps),
		}
	end

	local backgroundColor = prioritize(props.BackgroundColor, style.BackgroundColor)
	local backgroundTransparency = style.BackgroundTransparency
	local borderColor = prioritize(props.BorderColor, style.BorderColor)
	if self:_exceedsMaxLength() or props.ErrorText then
		borderColor = style.ErrorBorderColor
	end

	local hasError = self:hasError()
	local strokeTag
	if hasError then
		strokeTag = "X-Error"
	elseif self.state.isFocused then
		strokeTag = "X-Focus"
	end
	if not supportsStyleSheets and strokeTag then
		-- Stroke doesn't apply in Pane without StyleSheets or deprecated BorderBox background,
		-- so create a stroke manually instead
		children.Stroke = Roact.createElement("UIStroke", {
			Color = borderColor,
			Thickness = style.BorderThickness or 1,
		})
	end

	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then Dash.join({
				LayoutOrder = hasBottomText and 1 or props.LayoutOrder,
				Size = self:_getSize(),
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
				[React.Tag] = if props.OverrideTags
					then props.PaneTags or joinTags("Input X-Corner X-Left X-PadS X-Middle", strokeTag)
					else joinTags(
						"Input X-Corner X-Left X-PadS X-Middle",
						strokeTag,
						-- Include PaneTags alongside default pane tags
						props.PaneTags
					),
			}, if not props.PaneTags then { Layout = fillDirection, Spacing = spacing } else nil)
			else {
				BackgroundColor = backgroundColor,
				BackgroundTransparency = backgroundTransparency,
				BorderColor = borderColor,
				ClipsDescendants = true,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Layout = fillDirection,
				LayoutOrder = hasBottomText and 1 or props.LayoutOrder,
				Padding = if isMultiLine then style.MultiLinePadding else style.Padding,
				Size = self:_getSize(),
				Spacing = spacing,
				Style = "CornerBox",
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
			},
		children
	)
end

function TextInput:_validateText(text: string)
	if self.props.OnValidateText then
		local isValid, errorText = self.props.OnValidateText(text)
		local isError = not isValid
		if self.state.isError ~= isError or self.state.errorText ~= errorText then
			self:setState({
				isError = isError,
				errorText = errorText or Roact.None,
			})
		end
		return isValid
	end
	return true
end

function TextInput.getDerivedStateFromProps(nextProps, prevState)
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
			StyleModifier = styleModifier or Roact.None,
		}
	else
		return nil
	end
end

TextInput = withContext({
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(TextInput)

return withForwardRef(TextInput)
