--[[
	ListItemsModule for containing social link items or other list items

	Props:
		boolean Enabled
			if checkboxes are interactable
		string LabelText
			Label text
		table Items
			list of items(strings) you want to render
		table ListStatus
			list of items(strings) which are selected
		function ListItemsCheckBoxCallback
			callback to parent when checkbox in this list is clicked
]]
local FFlagPlayerEmulatorWithContext = game:GetFastFlag("PlayerEmulatorWithContext")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UILibrary = require(Plugin.Packages.UILibrary)
local ExpandableList = UILibrary.Component.ExpandableList

local CheckBoxModule = require(Plugin.Src.Components.CheckBoxModule)

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local getSocialMediaReferencesAllowed = require(Plugin.Src.Util.PlayerEmulatorUtilities).getSocialMediaReferencesAllowed

local ListItemsModule = Roact.PureComponent:extend("ListItemsModule")

function ListItemsModule:init(props)
	self.state = {
		expanded = true,
	}

	self.onExpandedStateChanged = function()
		self:setState({
			expanded = not self.state.expanded,
		})
	end

	self.checkBoxCallback = function(item)
		props.ListItemsCheckBoxCallback(props.LabelText, item, props.Plugin:get())
	end
end

function ListItemsModule:render()
	local state = self.state
	local props = self.props

	local enabled = props.Enabled
	local expanded = state.expanded
	local labelText = props.LabelText
	local items = props.Items or {}
	local theme
	if THEME_REFACTOR then
	    theme = props.Stylizer
	else
	    theme = props.Theme:get("Plugin")
	end
	local listStatus = props.ListStatus

	local itemElements = {}

	for _, value in pairs(items) do
		local selected = Cryo.List.find(listStatus, value) ~= nil
		itemElements["Item"..value] = Roact.createElement(CheckBoxModule, {
			Enabled = enabled,
			ItemKey = value,
			Selected = selected,
			CheckBoxCallback = self.checkBoxCallback,
		})
	end

	local arrowImageProps = expanded and theme.Arrow.downArrowImage or theme.Arrow.rightArrowImage

	return getSocialMediaReferencesAllowed() and Roact.createElement(ExpandableList, {
		TopLevelItem = {
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 25),
				BackgroundTransparency = 1,
			}, {
				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					Text = labelText,
					TextColor3 = enabled and theme.TextColor or theme.DisabledColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
				}),
				CollapseArrow = Roact.createElement("ImageLabel", Cryo.Dictionary.join(arrowImageProps, {
					Size = UDim2.new(0, theme.Arrow.dimension, 0, theme.Arrow.dimension),
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, theme.COLLAPSE_ARROW_OFFSET, 0.5, 0),
					BackgroundTransparency = 1,
					ImageColor3 = theme.TextColor,
				}))
			})
		},
		Content = itemElements,
		IsExpanded = expanded,
		OnExpandedStateChanged = self.onExpandedStateChanged,
	}) or nil
end

if FFlagPlayerEmulatorWithContext then
	ListItemsModule = withContext({
		Plugin = ContextServices.Plugin,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(ListItemsModule)
else
	ContextServices.mapToProps(ListItemsModule, {
		Plugin = ContextServices.Plugin,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end


return ListItemsModule