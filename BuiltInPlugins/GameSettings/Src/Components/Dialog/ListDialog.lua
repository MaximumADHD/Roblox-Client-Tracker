--[[
	A dialog that displays multiple text items in a list.
	Used with the showDialog function.

	Props:
		string Header = The header text to display at the top of this Dialog.
		list Entries = The entries to display in this Dialog.
		table Buttons = {string cancelButtonName, string confirmButtonName}
		bool Wrapped = Controls whether bullet text is wrapped or not
		enum Truncate = Controls whether text is truncated or not
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local UI = Framework.UI
local BulletList = UI.BulletList

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local ListDialog = Roact.PureComponent:extend("ListDialog")

function ListDialog:render()
	local props = self.props

	local header = props.Header
	local entries = props.Entries
	local buttons = props.Buttons

	local theme = props.Stylizer

	local children = {
		Header = Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.fontStyle.SemiBold, {
				AutomaticSize = Enum.AutomaticSize.Y,
				-- TODO STUDIOPLAT-27986 Remove Size when migrating to Dev Framework StyledDialog and use a layout with padding instead.
				Size = UDim2.new(1, -60, 0, 0),
				BackgroundTransparency = 1,
				Text = header,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
			})
		),
	}
	children.List = Roact.createElement(BulletList, {
		TextTruncate = Enum.TextTruncate.AtEnd,
		Items = entries,
		-- TODO STUDIOPLAT-27986 Remove Size when migrating to Dev Framework StyledDialog and use a layout with padding instead.
		Size = UDim2.new(1, -60, 0, 0),
	})

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, children)
end

ListDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(ListDialog)

return ListDialog
