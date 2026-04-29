--[[
	(USES STYLESHEETS)
	A form element which allows the user to choose an option from a dropdown menu of options.

	Required Props:
		table Items: An array of each item that should appear in the dropdown.
		callback OnItemActivated: A callback for when the user selects a dropdown entry.
		Focus Focus: a Focus object supplied by withContext()

	Optional Props:
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
		UDim2 Position: The position of this component.
		number LayoutOrder: The layout order of this component in a list.
		boolean Enabled: Enables component if true
		number Width: The width of the select input
		number MenuHeight: The maximum menu height when displaying.
		string PlaceholderText: A placeholder to display if there is no item selected.
		callback OnRenderItem: A function used to render a dropdown menu item.
		callback OnMouseEnter: A function that is called when the mouse hovers over the dropdown.
		callback OnMouseLeave: A function that is called leaves the dropdown.
		number SelectedIndex: The currently selected item index.
		any SelectedId: If the items are tables, the currently selected item Id.
		UDim2 Size: The size of the input component.
		boolean HideText: Allows hiding the text of the current selection.
		boolean HideIcon: Allows hiding the icon of the current selection.
		Style Style: The style with which to render this component. (PREFER style tag)
		any StyleModifier: The style modifier which overwrites the style of the component. (DEPRECATED Use Error tag)
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext. (DEPRECATED)
		table Icons: An array of icons that should appear next to the items.
		string ErrorText: Error text to display under the dropdown. If set, the border will be set to red.
		boolean TextWrapped: Whether or not the text is wrapped.
		boolean UseAutoWidth: Whether or not the component sizes its width based on its contents.
		string ExpandIcon: The main icon that expands this component's dropdown. Defaults to an arrow.
		boolean ShowSelection: Whether this component uses a text field to show the selected item. Only renders the expand icon if false.
		Enum.TextTruncate TextTruncate: Truncates the SelectedItemText
		string Variant: An optional parameter to determine the look of the component. 'modern'
		string Tooltip: An optional tooltip text to display when hovering over the component.
		number ItemHeight: An optional height for the item rows in the dropdown.

	Style Values:
		Style BackgroundStyle: The style with which to render the background.
		UDim2 Size: The size of the input component.
		UDim2 ArrowSize: The size of the dropdown arrow image.
		string ArrowImage: The asset to use as the dropdown arrow image.
		Color3 ArrowColor: The color of the dropdown arrow image.
		Color3 PlaceholderTextColor: The color of the dropdown placeholder text.
]]
-- TODO: sworzalla Remove OnMouseEnter/OnMouseLeave props once interaction layers have been implemented/fixed
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil

local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local SharedFlags = require(Framework.SharedFlags)
local FFlagDevFrameworkDropdownMenuHeight = SharedFlags.getFFlagDevFrameworkDropdownMenuHeight()

local UI = Framework.UI
local Container = require(UI.Components.Container)
local DropdownMenu = require(UI.Components.DropdownMenu)
local Image = require(UI.Components.Image)
local Pane = require(UI.Components.Pane)
local RoundBox = require(UI.Components.RoundBox)
local TextLabel = require(UI.Components.TextLabel)
local Tooltip = require(UI.Components.Tooltip)
local hasTag = require(Framework.Styling.hasTag)
local joinTags = require(Framework.Styling.joinTags)

local Util = require(Framework.Util)
local prioritize = Util.prioritize
local StyleModifier = require(Framework.Util.StyleModifier)
local Typecheck = require(Framework.Util.Typecheck)

local styles = require(script.styles)

local SelectInput = Roact.PureComponent:extend("SelectInput")
Typecheck.wrap(SelectInput, script)

local isInputMainPress = Util.isInputMainPress

local BORDER_SIZE = 1

SelectInput.defaultProps = {
	Enabled = true,
	ShowSelection = true,
}

local newStyleModifier
if not supportsStyleSheets then
	newStyleModifier = function(isHovered: boolean, hasErrorText: boolean, defaultModifier: any)
		if isHovered then
			return StyleModifier.Hover
		elseif hasErrorText then
			return StyleModifier.Error
		else
			return defaultModifier or Roact.None
		end
	end
end

function SelectInput:init()
	self.state = {
		isOpen = false,
		hoveredItemIndex = if FFlagDevFrameworkDropdownMenuHeight then 1 else nil,
		isHovered = false,
	}

	local function setHovered(isHovered)
		self:setState({
			isHovered = isHovered,
			StyleModifier = if supportsStyleSheets
				then nil
				else newStyleModifier(isHovered, self.props.ErrorText ~= nil),
		})
	end

	if not supportsStyleSheets then
		self.mouseEnter = function()
			setHovered(true)
		end

		self.mouseLeave = function()
			setHovered(false)
		end
	end

	self.onInputBegan = function(_rbx, input)
		local isMainPress = isInputMainPress(input)
		if isMainPress and self.props.Enabled == true then
			self:setState({
				isOpen = true,
			})
		end
		if
			FFlagDevFrameworkDropdownMenuHeight
			and input.UserInputType == Enum.UserInputType.Keyboard
			and self.state.isOpen
			and self.props.Enabled
		then
			local props = self.props
			local index = self.state.hoveredItemIndex

			if input.KeyCode == Enum.KeyCode.Down then
				self.onHoveredItemChanged(math.min(#props.Items, index + 1))
			elseif input.KeyCode == Enum.KeyCode.Up then
				self.onHoveredItemChanged(math.max(1, index - 1))
			elseif input.KeyCode == Enum.KeyCode.Return then
				props.OnItemActivated(props.Items[index])
				self.focusLost()
			end
		end
	end

	if FFlagDevFrameworkDropdownMenuHeight then
		self.onHoveredItemChanged = function(index: number)
			self:setState({
				hoveredItemIndex = index,
			})
		end
	end

	self.focusLost = function()
		if self.props.Enabled == true then
			self:setState({
				isOpen = false,
			})
		end
	end
end

if not supportsStyleSheets then
	function SelectInput.getDerivedStateFromProps(nextProps, prevState)
		local styleModifier = newStyleModifier(prevState.isHovered, nextProps.ErrorText ~= nil, nextProps.StyleModifier)
		return if styleModifier == prevState.styleModifier
			then nil
			else {
				StyleModifier = styleModifier,
			}
	end
end

function SelectInput:render()
	local props = self.props
	local state = self.state
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer

	local items = props.Items
	local icons = props.Icons
	local textWrapped = props.TextWrapped
	local textTruncate = props.TextTruncate
	local isModern = props.Variant == "modern"

	local isOpen = state.isOpen
	local hasError = if supportsStyleSheets
		then (props.ErrorText ~= nil or hasTag(props[React.Tag], "Error"))
		else (props.ErrorText ~= nil)
	local size = if supportsStyleSheets then props.Size else prioritize(props.Size, style.Size, UDim2.new(1, 0, 1, 0))
	if props.Width then
		size = if supportsStyleSheets
			then (if size
				then UDim2.new(0, props.Width, size.Y.Scale, size.Y.Offset)
				else UDim2.fromOffset(props.Width, styles:GetAttribute("Height")))
			else UDim2.new(0, props.Width, size.Y.Scale, size.Y.Offset)
	end

	local selectedIndex = props.SelectedIndex
	if props.SelectedId ~= nil then
		for i, item in ipairs(items) do
			if typeof(item) == "table" and item.Id == props.SelectedId then
				selectedIndex = i
				break
			end
		end
	end

	local hideIcon = props.HideIcon
	local icon
	if not hideIcon and icons then
		icon = if selectedIndex and icons[selectedIndex] ~= "" then icons[selectedIndex] else nil
	end

	local selectedItemIcon = if icon or (supportsStyleSheets and hasTag(props[React.Tag], "HasIcon"))
		then Roact.createElement(
			if supportsStyleSheets then Image else "ImageLabel",
			if supportsStyleSheets
				then {
					Image = icon,
					[React.Tag] = "Icon16 Primary",
				}
				else {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, style.IconOffset, 0.5, 0),
					Size = style.IconSize,
					Image = icon,
					ImageColor3 = style.ArrowColor,
					BackgroundTransparency = 1,
				}
		)
		else nil

	local hideText = props.HideText
	local backgroundStyle = style.BackgroundStyle
	local itemText
	if not hideText then
		local item = if selectedIndex then items[selectedIndex] else nil
		itemText = if item then (if type(item) == "table" then item.Label else item) else props.PlaceholderText
	end

	local arrowOffset = if supportsStyleSheets
		then styles:GetAttribute("ArrowOffset")
		else style.ArrowOffset + style.ArrowSize.X.Offset
	local selectedItemIconOffset = if icon
		then (if supportsStyleSheets
			then styles:GetAttribute("IconOffset")
			else style.IconOffset + style.IconSize.X.Offset)
		else 0

	local stylePadding = if supportsStyleSheets then styles:GetAttribute("Padding") or 0 else style.Padding

	local selectedItemTextSize =
		UDim2.new(1, -(selectedItemIconOffset + arrowOffset + stylePadding), 1, -BORDER_SIZE * 2)

	local selectedItemTextPosition = UDim2.fromOffset(stylePadding + selectedItemIconOffset, 0)

	local selectedItemText = if itemText
		then Roact.createElement(
			TextLabel,
			if supportsStyleSheets
				then {
					Text = itemText,
					TextWrapped = textWrapped,
					TextTruncate = textTruncate,
					[React.Tag] = joinTags("Left", if isModern then "Muted" else ""),
				}
				else {
					Position = selectedItemTextPosition,
					Size = selectedItemTextSize,
					Text = itemText,
					TextColor = not selectedIndex and style.PlaceholderTextColor or nil,
					TextTruncate = textTruncate,
					TextWrapped = textWrapped,
					TextXAlignment = Enum.TextXAlignment.Left,
				}
		)
		else nil

	local expandIcon = Roact.createElement(
		if supportsStyleSheets then Image else "ImageLabel",
		if supportsStyleSheets
			then {
				Image = props.ExpandIcon,
				[React.Tag] = "ArrowIcon Primary",
			}
			else {
				AnchorPoint = Vector2.new(1, 0.5),
				Size = style.ArrowSize,
				Position = UDim2.new(1, -style.ArrowOffset, 0.5, 0),
				Image = props.ExpandIcon or style.ArrowImage,
				ImageColor3 = style.ArrowColor,
				BackgroundTransparency = 1,
			}
	)

	local menu = Roact.createElement(DropdownMenu, {
		Width = props.Width,
		UseAutoWidth = props.UseAutoWidth,
		Hide = not isOpen,
		HoveredItemIndex = if FFlagDevFrameworkDropdownMenuHeight then state.hoveredItemIndex else nil,
		Icons = icons,
		ItemHeight = props.ItemHeight,
		Items = items,
		MaxHeight = if FFlagDevFrameworkDropdownMenuHeight then props.MenuHeight else nil,
		OnHoveredItemChanged = if FFlagDevFrameworkDropdownMenuHeight then self.onHoveredItemChanged else nil,
		OnFocusLost = self.focusLost,
		OnItemActivated = props.OnItemActivated,
		OnRenderItem = props.OnRenderItem,
		OnMouseEnter = props.OnMouseEnter,
		OnMouseLeave = props.OnMouseLeave,
		Style = if isModern then "Modern" else style.DropdownMenu,
		TextWrapped = textWrapped,
		Variant = if isModern then "modern" else nil,
	})

	local selectInputProps = {
		BackgroundTransparency = if supportsStyleSheets then nil else 1,
		Size = if supportsStyleSheets then props.Size else UDim2.fromScale(1, 1),
		[Roact.Event.InputBegan] = self.onInputBegan,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}
	local selectInputContents
	if props.ShowSelection then
		selectInputProps.Text = ""
		selectInputProps.AutoButtonColor = false

		if supportsStyleSheets then
			selectInputProps[React.Tag] = joinTags(
				if icon then "HasIcon" else nil,
				if not selectedIndex then "Placeholder" else nil,
				if isModern then "Component-SelectInput-Selection Row" else "X-Input Row",
				props[React.Tag],
				if isOpen then "X-Focus" else nil
			)
			selectInputContents = {
				SelectedItemIcon = selectedItemIcon,
				SelectedItemText = selectedItemText,
				SelectArrow = expandIcon,
				Menu = menu,
			}
		else
			selectInputContents = {
				Input = Roact.createElement(Container, {
					Background = RoundBox,
					BackgroundStyle = backgroundStyle,
					BackgroundStyleModifier = self.state.StyleModifier,
				}, {
					SelectedItemIcon = selectedItemIcon,
					SelectedItemText = selectedItemText,
					SelectArrow = expandIcon,
				}),
				Menu = menu,
			}
		end
	else
		selectInputContents = {
			Menu = menu,
		}
		selectInputProps.Image = if supportsStyleSheets then props.ExpandIcon else props.ExpandIcon or style.ArrowImage
	end

	selectInputContents.Tooltip = if props.Tooltip
		then Roact.createElement(Tooltip, {
			Text = props.Tooltip,
		})
		else nil

	local selectInputClassName = if props.ShowSelection then "TextButton" else "ImageButton"

	local children: { [string]: any } = {
		SelectInput = Roact.createElement(selectInputClassName, selectInputProps, selectInputContents),
	}

	local extraMargin = if supportsStyleSheets
		then styles:GetAttribute("ErrorHeight")
		else style.ErrorTextStyle.TextSize

	if props.ErrorText ~= nil then
		if supportsStyleSheets then
			children.ErrorText = Roact.createElement(TextLabel, {
				LayoutOrder = 2,
				Text = props.ErrorText,
				[React.Tag] = "Wrap Error X-Fit",
			})
		else
			children = {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				Contents = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 1, -extraMargin),
				}, children),

				ErrorText = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.XY,
					LayoutOrder = 2,
					Style = style.ErrorTextStyle,
					Text = props.ErrorText,
					TextWrapped = true,
				}),
			}
			size += UDim2.fromOffset(0, extraMargin)
		end
	end

	return Roact.createElement(
		if supportsStyleSheets then Pane else "Frame",
		join(
			{
				AnchorPoint = props.AnchorPoint,
				BackgroundTransparency = 1,
				LayoutOrder = props.LayoutOrder,
				Position = props.Position,
				Size = size,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = joinTags(
						"Component-SelectInput X-ColumnM",
						if hasError then "HasError" else nil,
						if isModern then "modern" else nil
					),
				}
				else nil
		),
		children
	)
end

SelectInput = withContext({
	Focus = ContextServices.Focus,
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(SelectInput)

return SelectInput
