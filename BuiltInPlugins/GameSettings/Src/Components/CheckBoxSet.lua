--[[
	A set of an arbitrary number of CheckBoxes.

	Props:
		string Title = The title to place to the left of this CheckBoxSet.
		table Boxes = A collection of props for all CheckBoxes to add.
		function EntryClicked(box) = A callback for when a CheckBox was clicked.
		int LayoutOrder = The order this CheckBoxSet will sort to when placed in a UIListLayout.
		string ErrorMessage = An error message to display on this CheckBoxSet.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateCheckBox = SharedFlags.getFFlagDevFrameworkMigrateCheckBox()

local Cryo = require(Plugin.Packages.Cryo)
local UILibrary
if not FFlagDevFrameworkMigrateCheckBox then
	UILibrary = require(Plugin.Packages.UILibrary)
end

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local UI = Framework.UI
local Checkbox = if FFlagDevFrameworkMigrateCheckBox then UI.Checkbox else UILibrary.Component.CheckBox
local TitledFrame = UI.TitledFrame

local CheckBoxSet = Roact.PureComponent:extend("CheckBoxSet")

function CheckBoxSet:render()
	local props = self.props
	local theme = props.Stylizer

	local boxes = props.Boxes
	local numBoxes = #boxes
	local errorState = props.ErrorMessage ~= nil

	local children = {
		Layout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, DEPRECATED_Constants.CHECKBOX_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i, box in ipairs(boxes) do
		table.insert(
			children,
			if FFlagDevFrameworkMigrateCheckBox
				then Roact.createElement(Checkbox, {
					Checked = box.Selected ~= nil and box.Selected,
					Disabled = not props.Enabled,
					Key = box.Id,
					LayoutOrder = i,
					OnClick = function()
						props.EntryClicked(box)
					end,
					Text = box.Title,
				}, {
					Link = box.LinkTextFrame,
				})
				else Roact.createElement(Checkbox, {
					Title = box.Title,
					Id = box.Id,
					Height = DEPRECATED_Constants.CHECKBOX_SIZE,
					TextSize = theme.fontStyle.Smaller.TextSize,
					Description = box.Description,
					Selected = box.Selected,
					Enabled = props.Enabled,
					LayoutOrder = i,
					OnActivated = function()
						props.EntryClicked(box)
					end,
					Link = box.LinkTextFrame,
				})
		)
	end

	if errorState then
		children.Error = Roact.createElement(
			"TextLabel",
			Cryo.Dictionary.join(theme.fontStyle.SmallError, {
				LayoutOrder = numBoxes + 1,
				Size = UDim2.new(1, 0, 0, DEPRECATED_Constants.CHECKBOX_SIZE),
				BackgroundTransparency = 1,
				Text = props.ErrorMessage,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			})
		)
	end

	local maxHeight = numBoxes * DEPRECATED_Constants.CHECKBOX_SIZE + numBoxes * DEPRECATED_Constants.CHECKBOX_PADDING

	if props.ShowWarning then
		maxHeight = maxHeight * 3
	end

	return Roact.createElement(TitledFrame, {
		LayoutOrder = props.LayoutOrder or 1,
		Title = props.Title,
	}, children)
end

CheckBoxSet = withContext({
	Stylizer = ContextServices.Stylizer,
})(CheckBoxSet)

return CheckBoxSet
