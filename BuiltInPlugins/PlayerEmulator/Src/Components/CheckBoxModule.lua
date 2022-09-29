--[[
	CheckBox module for social link items or other list items

	Props:
		bool Enabled
			if interactable
		string ItemKey
			Label text
		boolean Selected
			if checked
		function CheckBoxCallback
			The reason we extract this as a module.
			Because the CheckBox in UILibrary doesn't take parameters,
			but we need pass the checkbox status into callback for any meaning logic business
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateCheckBox = SharedFlags.getFFlagDevFrameworkMigrateCheckBox()

local UILibrary

if not FFlagDevFrameworkMigrateCheckBox then
	UILibrary = require(Plugin.Packages.UILibrary)
end

local UI = Framework.UI
local CheckBox = if FFlagDevFrameworkMigrateCheckBox then UI.Checkbox else UILibrary.Component.CheckBox

local CheckBoxModule = Roact.PureComponent:extend("CheckBoxModule")

function CheckBoxModule:init(props)
	self.onActivated = function()
		props.CheckBoxCallback(props.ItemKey)
	end
end

function CheckBoxModule:render()
	local props = self.props
	local theme = props.Stylizer
	
	local enabled = props.Enabled
	local itemKey = props.ItemKey
	local selected = props.Selected

	return Roact.createElement("Frame", {
		Size = theme.CHECKBOX_FRAME_SIZE,
		BackgroundTransparency = 1,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = theme.LISTITEM_INDENT_LEFT,
		}),
		CheckBox = Roact.createElement(CheckBox, if FFlagDevFrameworkMigrateCheckBox then {
			Checked = selected,
			Enabled = enabled,
			Key = itemKey,
			OnClick = self.onActivated,
			Text = itemKey,
		} else {
			Title = itemKey,
			Selected = selected,
			Enabled = enabled,
			Height = theme.CHECKBOX_HEIGHT,
			TextSize = theme.CHECKBOX_TEXT_SIZE,
			OnActivated = self.onActivated,
			Size = UDim2.new(1, 0, 1, 0),
			Text = itemKey,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
		})
	})
end

CheckBoxModule = withContext({
	Stylizer = ContextServices.Stylizer,
})(CheckBoxModule)

return CheckBoxModule
