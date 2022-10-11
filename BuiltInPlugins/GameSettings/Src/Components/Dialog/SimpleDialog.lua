--[[
	A dialog that displays one line of text.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local SimpleDialog = Roact.PureComponent:extend("SimpleDialog")

function SimpleDialog:render()
	local props = self.props

	local theme = props.Stylizer

	local header = props.Header
	local body = props.Body
	local buttons = props.Buttons

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, {
		Header = Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.fontStyle.Title, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				Text = header,
				TextWrapped = true,
			})
		),

		Body = body,
	})
end

SimpleDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(SimpleDialog)

return SimpleDialog
