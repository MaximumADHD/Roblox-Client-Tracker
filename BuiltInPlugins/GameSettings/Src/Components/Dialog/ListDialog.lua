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
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)

local BulletPoint = UILibrary.Component.BulletPoint
local BaseDialog = require(Plugin.Src.Components.Dialog.BaseDialog)

local ListDialog = Roact.PureComponent:extend("ListDialog")

function ListDialog:render()
	local props = self.props

	local header = props.Header
	local entries = props.Entries
	local buttons = props.Buttons

	local theme = props.Theme:get("Plugin")

	local entriesList = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i, item in ipairs(entries) do
		table.insert(entriesList, Roact.createElement(BulletPoint, {
			LayoutOrder = i,
			Text = item,
			TextWrapped = props.Wrapped,
			TextTruncate = props.Truncate,
		}))
	end

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, {
		Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.SemiBold, {
			Size = UDim2.new(1, -60, 0, 80),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 10),
			BackgroundTransparency = 1,
			Text = header,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
		})),

		Entries = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -60, 0, 120),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 100),
		}, entriesList),
	})
end


ListDialog = withContext({
	Theme = ContextServices.Theme,
})(ListDialog)



return ListDialog
