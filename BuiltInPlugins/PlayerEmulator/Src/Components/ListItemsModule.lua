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
local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()
local FFlagDevFrameworkMigrateExpandableList = SharedFlags.getFFlagDevFrameworkMigrateExpandableList()

local UILibrary
if not FFlagDevFrameworkMigrateExpandableList then
	UILibrary = require(Plugin.Packages.UILibrary)
end

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local UI = Framework.UI
local ExpandablePane = if FFlagDevFrameworkMigrateExpandableList then UI.ExpandablePane else UILibrary.Component.ExpandableList
local TextLabel = UI.Decoration.TextLabel

local CheckBoxModule = require(Plugin.Src.Components.CheckBoxModule)

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
	local theme = props.Stylizer
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

	return getSocialMediaReferencesAllowed() and Roact.createElement(ExpandablePane, if FFlagDevFrameworkMigrateExpandableList then {
		Expanded = expanded,
		OnExpandedChanged = self.onExpandedStateChanged,
		Text = labelText,
	} else {
		TopLevelItem = {
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 25),
				BackgroundTransparency = 1,
			}, {
				Label = if FFlagDevFrameworkMigrateTextLabels then (
					Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = labelText,
						StyleModifier = if enabled then nil else StyleModifier.Disabled,
					})
				) else (
					Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						Text = labelText,
						TextColor3 = enabled and theme.TextColor or theme.DisabledColor,
						TextXAlignment = Enum.TextXAlignment.Left,
						BackgroundTransparency = 1,
					})
				),
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
	}, if FFlagDevFrameworkMigrateExpandableList then itemElements else nil) or nil
end


ListItemsModule = withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
})(ListItemsModule)



return ListItemsModule