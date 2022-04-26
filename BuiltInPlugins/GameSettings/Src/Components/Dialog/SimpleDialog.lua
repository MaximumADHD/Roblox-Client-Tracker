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
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local SimpleDialog = Roact.PureComponent:extend("SimpleDialog")

function SimpleDialog:render()
	local props = self.props

	local theme = THEME_REFACTOR and props.Stylizer or props.Theme:get("Plugin")

	local header = props.Header
	local body = props.Body
	local buttons = props.Buttons

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, {
		Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			Text = header,
			TextWrapped = true,
		})),

		Body = body,
	})
end


SimpleDialog = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(SimpleDialog)



return SimpleDialog
