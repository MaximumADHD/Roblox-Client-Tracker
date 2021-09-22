--[[
	A dialog that displays one line of text.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]
local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")
local FFlagFixWarningDialogIcon = game:GetFastFlag("FixWarningDialogIcon")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework).ContextServices
local withContext = ContextServices.withContext

local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local SimpleDialog = Roact.PureComponent:extend("SimpleDialog")

function SimpleDialog:render()
	local props = self.props

	local theme = props.Theme:get("Plugin")

	local header = props.Header
	local body = props.Body
	local buttons = props.Buttons

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, {
		Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
			AutomaticSize = FFlagFixWarningDialogIcon and Enum.AutomaticSize.Y or nil,
			Size = not FFlagFixWarningDialogIcon and UDim2.new(1, 0, 0, 60) or UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			Text = header,
			TextWrapped = true,
		})),

		Body = body,
	})
end

if FFlagGameSettingsWithContext then
	SimpleDialog = withContext({
		Theme = ContextServices.Theme,
	})(SimpleDialog)
else
	ContextServices.mapToProps(SimpleDialog, {
		Theme = ContextServices.Theme,
	})
end


return SimpleDialog
