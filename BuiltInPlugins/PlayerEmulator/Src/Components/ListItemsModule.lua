--[[
	ListItemsModule for containing social link items or other list items

	Props:
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
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local UILibrary = require(Plugin.Packages.UILibrary)
local ExpandableList = UILibrary.Component.ExpandableList

local CheckBoxModule = require(Plugin.Src.Components.CheckBoxModule)

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

	local expanded = state.expanded
	local labelText = props.LabelText
	local items = props.Items or {}
	local theme = props.Theme:get("Plugin")
	local listStatus = props.ListStatus

	local itemElements = {}

	for _, value in pairs(items) do
		local selected = Cryo.List.find(listStatus, value) ~= nil
		itemElements["Item"..value] = Roact.createElement(CheckBoxModule, {
			ItemKey = value,
			Selected = selected,
			CheckBoxCallback = self.checkBoxCallback,
		})
	end

	local arrowImageProps = expanded and theme.Arrow.downArrowImage or theme.Arrow.rightArrowImage

	return Roact.createElement(ExpandableList, {
		TopLevelItem = {
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 25),
				BackgroundTransparency = 1,
			}, {
				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					Text = labelText,
					TextColor3 = theme.TextColor,
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
	})
end

ContextServices.mapToProps(ListItemsModule, {
	Plugin = ContextServices.Plugin,
	Theme = ContextServices.Theme,
})

return ListItemsModule