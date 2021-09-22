--[[
	Alert dialog

	Required Props:
		Enabled: bool -- Whether the popup dialog is initially shown
		MessageKey: string -- The localization key of the message
		TitleKey: string -- The localization key of the title
		OnClose: function -- function to call when clicking "Ok" button or the red "x" in the title bar
	
	Optional Props:
		MessageKeyFormatTable: table -- Replace the format keys with the values in this table in the translated message string.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local UI = Framework.UI

local AlertDialog = Roact.PureComponent:extend("AlertDialog")

function AlertDialog:init(props)
	self:setState({
		enabled = props.Enabled
	})

	self.closeDialog = function()
		self:setState({
			enabled = false
		})
		self.props.OnClose()
	end
end

function AlertDialog:render()
	local props = self.props
	local theme = props.Stylizer
	local localization = props.Localization

	return Roact.createElement(StyledDialog, {
		Style = "Alert",
		Enabled = self.state.enabled,
		Title = localization:getText("AlertDialog", props.TitleKey),
		Buttons = {
			{ Key = "ok", Text = localization:getText("AlertDialog", "OkButtonText") },
		},
		OnButtonPressed = self.closeDialog,
		OnClose = props.OnClose,
		MinContentSize = theme.PopupMessageSize,
		Modal = true,
	}, {
		Label = Roact.createElement(UI.Decoration.TextLabel, {
			Size = UDim2.fromScale(0.95, 1),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, 0),
			Text = localization:getText("AlertDialog", props.MessageKey, props.MessageKeyFormatTable),
			TextColor = theme.TextColor,
			TextWrapped = true,
			TextSize = theme.TextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

AlertDialog = withContext({
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(AlertDialog)

return AlertDialog
