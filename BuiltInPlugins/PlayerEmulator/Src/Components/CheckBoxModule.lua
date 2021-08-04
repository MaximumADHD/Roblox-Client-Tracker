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
local FFlagPlayerEmulatorWithContext = game:GetFastFlag("PlayerEmulatorWithContext")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UILibrary = require(Plugin.Packages.UILibrary)
local CheckBox = UILibrary.Component.CheckBox

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local CheckBoxModule = Roact.PureComponent:extend("CheckBoxModule")

function CheckBoxModule:init(props)
	self.onActivated = function()
		props.CheckBoxCallback(props.ItemKey)
	end
end

function CheckBoxModule:render()
	local props = self.props
	local theme
	if THEME_REFACTOR then
	    theme = props.Stylizer
	else
	    theme = props.Theme:get("Plugin")
	end

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
		CheckBox = Roact.createElement(CheckBox, {
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

if FFlagPlayerEmulatorWithContext then
	CheckBoxModule = withContext({
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(CheckBoxModule)
else
	ContextServices.mapToProps(CheckBoxModule, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end


return CheckBoxModule