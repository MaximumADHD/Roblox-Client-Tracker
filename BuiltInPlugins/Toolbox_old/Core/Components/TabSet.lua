--[[
	A horizontal set of Tabs that can be any length.

	Props:
		UDim2 Size
		UDim2 Position
		table Tabs = The tabs to display in this TabSet.
			{string Key, ContentId Image, string Text}
		CurrentTab = The currently selected Tab in the Tabs table.

		function onTabSelected = A callback for when a Tab is selected.
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local Tab = require(Plugin.Core.Components.Tab)
local TabSet = Roact.PureComponent:extend("TabSet")

function TabSet:init()
	self.onTabSelected = function(key)
		if self.props.onTabSelected then
			self.props.onTabSelected(key)
		end
	end
end

function TabSet:resetLayout()
	self.currentLayout = 0
end

function TabSet:nextLayout()
	self.currentLayout = self.currentLayout + 1
	return self.currentLayout
end

function TabSet:createTab(key, currentTab, text, image)
	return Roact.createElement(Tab, {
		LayoutOrder = self:nextLayout(),
		Image = image,
		Text = text,
		Selected = key == currentTab,
		onClick = function()
			self.onTabSelected(key)
		end,
	})
end

function TabSet:render(props)
	return withTheme(function(theme)
		local size = self.props.Size or UDim2.new()
		local position = self.props.Position or UDim2.new()
		local tabs = self.props.Tabs or {}
		local currentTab = self.props.CurrentTab
		local tabTheme = theme.tabSet

		self:resetLayout()

		local children = {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}),

			LeftPadding = Roact.createElement("Frame", {
				LayoutOrder = self:nextLayout(),
				Size = UDim2.new(0, 1, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = tabTheme.tabBackground,
			}),
		}

		for _, tab in ipairs(tabs) do
			children[tab.Key] = self:createTab(tab.Key, currentTab, tab.Text, tab.Image)
		end

		children.RightPadding = Roact.createElement("Frame", {
			LayoutOrder = self:nextLayout(),
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = tabTheme.tabBackground,
		}, {
			LowerBorder = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 2),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = tabTheme.borderColor,
			}),
		})

		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			BackgroundColor3 = tabTheme.backgroundColor,
			BorderSizePixel = 0,
		}, children)
	end)
end

return TabSet
