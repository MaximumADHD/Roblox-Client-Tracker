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

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryBulletPoint = SharedFlags.getFFlagRemoveUILibraryBulletPoint()

local Dash = require(Plugin.Packages.Dash)
local map = Dash.map

local UI = Framework.UI
local BulletList = UI.BulletList

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)

local BulletPoint
if not FFlagRemoveUILibraryBulletPoint then
	BulletPoint = UILibrary.Component.BulletPoint
end
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
				AnchorPoint = if FFlagRemoveUILibraryBulletPoint then nil else Vector2.new(0.5, 0),
				AutomaticSize = if FFlagRemoveUILibraryBulletPoint then Enum.AutomaticSize.Y else nil,
				-- TODO STUDIOPLAT-27986 Remove Size when migrating to Dev Framework StyledDialog and use a layout with padding instead.
				Size = if FFlagRemoveUILibraryBulletPoint then UDim2.new(1, -60, 0, 0) else UDim2.new(1, -60, 0, 80),
				Position = if FFlagRemoveUILibraryBulletPoint then nil else UDim2.new(0.5, 0, 0, 10),
				BackgroundTransparency = 1,
				Text = header,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
			})
		),
	}

	if FFlagRemoveUILibraryBulletPoint then
		children.List = Roact.createElement(BulletList, {
			TextTruncate = Enum.TextTruncate.AtEnd,
			Items = entries,
			-- TODO STUDIOPLAT-27986 Remove Size when migrating to Dev Framework StyledDialog and use a layout with padding instead.
			Size = UDim2.new(1, -60, 0, 0),
		})
	else
		local entryList = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 4),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
		}

		for i, item in ipairs(entries) do
			table.insert(
				entryList,
				Roact.createElement(BulletPoint, {
					LayoutOrder = i,
					Text = item,
					TextWrapped = props.Wrapped,
					TextTruncate = props.Truncate,
				})
			)
		end

		children.Entries = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -60, 0, 120),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 100),
		}, entryList)
	end

	return Roact.createElement(BaseDialog, {
		Buttons = buttons,
		OnResult = props.OnResult,
	}, children)
end

ListDialog = withContext({
	Stylizer = ContextServices.Stylizer,
})(ListDialog)

return ListDialog
