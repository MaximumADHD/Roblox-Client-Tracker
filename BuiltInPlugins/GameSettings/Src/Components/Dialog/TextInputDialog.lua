--[[
	A dialog that displays a dialog with a header, body, description, and a textbox for input

	Props:
		string Header = The header text to display
		table Buttons = {
					{Key = "Submit", string buttonName},
					{string buttonKey, string buttonName},
				},
		Vector2 Size = The minimum size of the dialog
		string Title = The text to display at the top of this Dialog.
		string Body = The body of text in the dialog
		string Description = The description of the textbox in dialog
		string TextBox = The placeholder text for the dialog
		function OnClose = callback for pressing the close button at top of dialog
		function OnButtonPressed = callback for pressing buttons in the button bar on dialog
		function SaveSettings = callback for successful submission of dialog
]]
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local Framework = require(Plugin.Framework)
local TextInput = Framework.UI.TextInput
local StyledDialog = Framework.StudioUI.StyledDialog
local ContextServices = Framework.ContextServices

local TextInputDialog = Roact.PureComponent:extend("TextInputDialog")

function TextInputDialog:init()
	self.state = {
		text = "", -- TODO: jbousellam - STUDIOCORE-24599 - this should be initialized based on the locally saved email
		enabled = true,
	}
end

function TextInputDialog:render()
	assert(FFlagLuobuDevPublishLua)
	local props = self.props

	local theme = props.Theme:get("Plugin")

	local header = props.Header
	local body = props.Body
	local buttons = props.Buttons
	local description = props.Description
	local textbox = props.TextBox or ""
	local textboxInput = self.state.text or ""
	local title = props.Title or ""
	local size = props.Size
	local enabled = self.state.enabled

	local onButtonPressed = props.OnButtonPressed
	local onClose = props.OnClose
	local saveSettings = props.SaveSettings or nil

	return Roact.createElement(StyledDialog, {
		Buttons = buttons,
		Title = title,
		MinContentSize = size,
		OnButtonPressed = function(buttonKey)
			onButtonPressed(self.state.text)
			self:setState({
				enabled = false,
			})
			local submitButtonPressed = buttonKey == "Submit"
			if submitButtonPressed and saveSettings then
				saveSettings()
			end
		end,
		OnClose = function()
			onClose(self.state.text)
			self:setState({
				enabled = false,
			})
		end,
		Modal = true,
		Resizable = false,
		Enabled = enabled,
		Style = "AcceptCancel",
	}, {
		Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Text = header,
			TextWrapped = true,
			Font = theme.fontStyle.SemiBold.Font,
			TextColor3 = theme.fontStyle.SemiBold.TextColor3,
			Position = UDim2.new(0, 0, 1, theme.textInputDialog.header.offset.Y),
		})),
		Body = Roact.createElement("TextLabel", {
			Text = body,
			TextSize = theme.fontStyle.Normal.TextSize,
			AutomaticSize = Enum.AutomaticSize.XY,
			TextWrapped = true,
			Font = theme.fontStyle.SemiBold.Font,
			TextColor3 = theme.fontStyle.SemiBold.TextColor3,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 1, theme.textInputDialog.body.offset.Y),
		}),
		Description = Roact.createElement("TextLabel", {
			Text = description,
			TextSize = theme.fontStyle.Normal.TextSize,
			AutomaticSize = Enum.AutomaticSize.XY,
			TextWrapped = true,
			Font = theme.fontStyle.Normal.Font,
			TextColor3 = theme.fontStyle.Normal.TextColor3,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(0, 0, 1, theme.textInputDialog.description.offset.Y),
		}),
		TextBox = Roact.createElement(TextInput, {
			Text = textboxInput,
			Style = "RoundedBorder",
			Position = UDim2.new(0, 0, 1, theme.textInputDialog.textbox.offset.Y),
			Size = UDim2.new(1, 0, 0, theme.textInputDialog.textbox.height),
			PlaceholderText = textbox,
			ShouldFocus = true,
			AutomaticSize = Enum.AutomaticSize.XY,
			OnTextChanged = function(newText)
				self:setState({
					text = newText,
				})
			end,
		}),
	})
end

ContextServices.mapToProps(TextInputDialog, {
	Theme = ContextServices.Theme,
})

return TextInputDialog