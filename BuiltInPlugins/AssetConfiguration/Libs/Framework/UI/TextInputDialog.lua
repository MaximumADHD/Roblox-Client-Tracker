--[[
	A dialog with a header, body, optional description, and a TextInput. The TextInput can have an optional Error text displayed under it.

	Required Props:
		table Buttons: Specific key value pairs for Accept and Cancel buttons. Default button is the first button in the table
			Example: Buttons = {{Key = "Submit", Text = "Submit"},{Key = "Cancel", Text = "Cancel"},}
		string Body: The body of text in the dialog
		callback OnClose: Callback for pressing the close button at top of dialog - OnClose(text: string)
		callback OnButtonPressed: Callback for pressing buttons in the button bar on dialog - OnButtonPressed(text: string, buttonKey: string)

	Optional Props:
		Theme Theme: A Theme ContextItem, which is provided via mapToProps.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via mapToProps.
		boolean Enabled: Whether the widget is currently visible
		string Title: The text to display at the top of this dialog
		string Header: The header text to display
		string Description: An additional description for the TextInput in the dialog
		string PlaceholderText: Placeholder text to show when the input is empty
		string Text: Text to populate the input with
		string BottomText: Text to display underneath TextInput on Error
		Vector2 Size: The minimum size for the dialog

	Style Values:
		number TextSize: TextSize value for Header.
		table Height: TextInput height.
		table Size: The minimum size for the dialog X and Y values. The default is X = 500, Y = 300
		number Padding: Padding between components in dialog
		number Spacing: Spacing between borders of dialog
]]
local FFlagTextInputDialogDevFramework = game:GetFastFlag("TextInputDialogDevFramework")

local Framework = script.Parent.Parent

local Roact = require(Framework.Parent.Roact)
local Util = require(Framework.Util)
local ContextServices = require(Framework.ContextServices)

local Pane = require(Framework.UI.Pane)
local TextLabel = require(Framework.UI.TextLabel)
local TextInputWithBottomText = require(Framework.StudioUI.TextInputWithBottomText)
local StyledDialog = require(Framework.StudioUI.StyledDialog)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Typecheck = Util.Typecheck
local LayoutOrderIterator = Util.LayoutOrderIterator

local TextInputDialog = Roact.PureComponent:extend("TextInputDialog")
Typecheck.wrap(TextInputDialog, script)

TextInputDialog.defaultProps = {
	Enabled = true,
	PlaceholderText = "",
	Text = "",
	Title = "",
	BottomText = "",
}

function TextInputDialog:init()
	self.state = {
		text = self.props.Text,
	}
end

function TextInputDialog:render()
	assert(FFlagTextInputDialogDevFramework)
	local props = self.props

	local theme = props.Theme
	local style
	if THEME_REFACTOR then
		style = props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	local layoutOrderIterator = LayoutOrderIterator.new()

	local header = props.Header
	local body = props.Body
	local buttons = props.Buttons
	local description = props.Description
	local placeholderText = props.PlaceholderText
	local text = self.state.text
	local bottomText = props.BottomText
	local title = props.Title
	local size = props.Size or Vector2.new(style.Size.X, style.Size.Y)
	local enabled = props.Enabled

	local onButtonPressed = props.OnButtonPressed
	local onClose = props.OnClose

	return Roact.createElement(StyledDialog, {
		Buttons = buttons,
		Title = title,
		MinContentSize = size,
		OnButtonPressed = function(buttonKey)
			onButtonPressed(self.state.text, buttonKey)
		end,
		OnClose = function()
			onClose(self.state.text)
		end,
		Modal = true,
		Resizable = false,
		Enabled = enabled,
		Style = "AcceptCancel",
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
		Pane = Roact.createElement(Pane, {
			Style = "Box",
			Padding = style.Padding,
			Spacing = style.Spacing,
			Layout = Enum.FillDirection.Vertical
		}, {
			Header = header and Roact.createElement(TextLabel, {
				TextSize = style.TextSize,
				Text = header,
				Style = "Semibold",
				AutomaticSize = Enum.AutomaticSize.XY,
				TextWrapped = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 0),
			}) or nil,
			Body = Roact.createElement(TextLabel, {
				Text = body,
				Style = "Semibold",
				AutomaticSize = Enum.AutomaticSize.XY,
				TextWrapped = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 0),
			}),
			Description = description and Roact.createElement(TextLabel, {
				Text = description,
				Style = "Normal",
				AutomaticSize = Enum.AutomaticSize.XY,
				TextWrapped = true,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 0),
			}) or nil,
			TextInputWithBottomText = Roact.createElement(TextInputWithBottomText, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				BottomText = props.BottomText,
				Size = UDim2.new(1, 0, 0, style.Height.TextInputWithBottomText),
				Style = bottomText ~= "" and "Error" or nil,
				TextInputStyle = bottomText == "" and "RoundedBorder" or nil,
				TextInputProps = {
					Text = text,
					PlaceholderText = placeholderText,
					ShouldFocus = true,
					OnTextChanged = function(newText)
						self:setState({
							text = newText,
						})
					end,
				},
			})
		}),
	})
end

ContextServices.mapToProps(TextInputDialog, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return TextInputDialog