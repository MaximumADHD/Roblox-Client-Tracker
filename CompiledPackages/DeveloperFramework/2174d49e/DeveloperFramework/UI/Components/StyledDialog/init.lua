--[[
	(CHANGES REQUIRED)
	A version of Dialog that utilizes deprecated Button.
	This component is planned to be replaced by a RDL dialog system that utilizes the Extensibility API to display.

	Required Props:
		table Buttons: A list of tables that hold information about how to style buttons.
		Vector2 MinContentSize: A width and height used if the calculated size is smaller.
		callback OnClose: A function which is fired when the X button attached
			to the widget is pressed.
		callback OnButtonPressed: A function which is called when any of the buttons
			are pressed.
		string Title: The title text displayed at the top of the widget.

	Optional Props:
		Enum.AutomaticSize AutomaticSize: The AutomaticSize of the component.
		boolean Enabled: Whether the widget is currently visible.
		boolean Modal: Whether the widget blocks input to other windows.
		boolean Resizable: Whether the widget can be resized.
		Style Style: a predefined kind of dialog to use.
		Enum.ZIndexBehavior ZIndexBehavior: The ZIndexBehavior of the widget.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Enum.HorizontalAlignment ButtonHorizontalAlignment: Where to align the buttons horizontally (Left, Center, or Right)

	Style Values:
		Color3 BackgroundColor3: Background color of the dialog.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)

local Padding = require(Framework.Style.Padding)

local Util = require(Framework.Util)
local prioritize = Util.prioritize
local Typecheck = require(Framework.Util.Typecheck)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local Pane = require(Framework.UI.Components.Pane)
local Dialog = require(Framework.UI.Components.Dialog)

local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local StyledDialog = Roact.PureComponent:extend("StyledDialog")

StyledDialog.defaultProps = {
	Enabled = true,
}

function StyledDialog:init()
	self.getComputedSizes = function(style)
		local buttons = self.props.Buttons
		local buttonWidth = style.ButtonWidth
		local buttonHeight = style.ButtonHeight

		local buttonContainerSize
		if buttons and (#buttons ~= 0) then
			local buttonPadding = Padding(style.ButtonPadding)
			local spacing = style.ButtonSpacing
			local width = (#buttons * buttonWidth) + (spacing * (#buttons - 1)) + buttonPadding.Horizontal
			local height = buttonHeight + buttonPadding.Vertical
			buttonContainerSize = Vector2.new(width, height)
		else
			buttonContainerSize = Vector2.new(0, 0)
		end

		local contentSize = self.props.MinContentSize
		local contentPadding = Padding(style.ContentPadding)
		local width = math.max(contentSize.X + contentPadding.Horizontal, buttonContainerSize.X)
		local height = contentSize.Y + contentPadding.Vertical + buttonContainerSize.Y
		local windowSize = Vector2.new(width, height)

		return windowSize, buttonContainerSize
	end

	self.getButtons = function(styleTable)
		local style = self.props.Stylizer

		local onButtonPressed = self.props.OnButtonPressed
		local buttons = self.props.Buttons
		local defaultButtons = styleTable.Buttons or {}

		local buttonWidth = style.ButtonWidth
		local buttonHeight = style.ButtonHeight

		local buttonsElements = {}

		for i, buttonProps in ipairs(buttons) do
			assert(buttonProps.Key ~= nil, string.format("Dialog buttons must have keys. Missing at index : %d", i))

			local buttonStyle = defaultButtons[i] or {}
			local key = buttonProps.Key
			local styleName = prioritize(buttonProps.Style, buttonStyle.Style, "Round")
			local text = buttonProps.Text
			local styleModifier = buttonProps.StyleModifier
			local tooltip = buttonProps.Tooltip

			buttonsElements[tostring(i)] = Roact.createElement(Button, {
				LayoutOrder = i,
				OnClick = function()
					onButtonPressed(key)
				end,
				Size = UDim2.fromOffset(buttonWidth, buttonHeight),
				Style = styleName,
				StyleModifier = styleModifier,
				Text = text,
				Tooltip = tooltip,
			})
		end
		return buttonsElements
	end
end

function StyledDialog:render()
	local style = self.props.Stylizer
	local design = self.props.Design

	local automaticSize = self.props.AutomaticSize
	local backgroundColor = prioritize(self.props.BackgroundColor3, style.Background)
	local buttonHorizontalAlignment = prioritize(self.props.ButtonHorizontalAlignment, style.ButtonHorizontalAlignment)
	local isEnabled = self.props.Enabled
	local isModal = prioritize(self.props.Modal, style.Modal)
	local isResizable = prioritize(self.props.Resizable, style.Resizable)
	local onClose = self.props.OnClose
	local title = self.props.Title
	local zIndexBehavior = self.props.ZIndexBehavior

	local windowSize, buttonContainerSize = self.getComputedSizes(style)

	return Roact.createElement(Dialog, {
		Enabled = isEnabled,
		Modal = isModal,
		OnClose = onClose,
		Resizable = isResizable,
		Size = windowSize,
		MinSize = windowSize,
		Title = title,
		ZIndexBehavior = zIndexBehavior,
	}, {
		SolidBackground = Roact.createElement(Pane, {
			BackgroundColor = backgroundColor,
			Layout = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Padding = style.ContentPadding,
		}, {
			Contents = Roact.createElement(Pane, {
				AutomaticSize = automaticSize,
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 1, -buttonContainerSize.Y),
			}, self.props[Roact.Children]),

			ButtonContainer = Roact.createElement(Pane, {
				HorizontalAlignment = buttonHorizontalAlignment,
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = 2,
				Padding = style.ButtonPadding,
				Size = UDim2.new(1, 0, 0, buttonContainerSize.Y),
				Spacing = style.ButtonSpacing,
			}, self.getButtons(style)),
		}),
		StyleLink = if supportsStyleSheets
			then Roact.createElement("StyleLink", {
				StyleSheet = design:get(),
			})
			else nil,
	})
end

StyledDialog = withContext({
	Stylizer = ContextServices.Stylizer,
	Design = if supportsStyleSheets then ContextServices.Design else nil,
})(StyledDialog)

Typecheck.wrap(StyledDialog, script)

return StyledDialog
