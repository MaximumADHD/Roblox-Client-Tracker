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
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local Tab = require(Plugin.Core.Components.Tab)
local TabSet = Roact.PureComponent:extend("TabSet")

function TabSet:init()
	self.state = {
		currentWidth = 0
	}

	self.tabSetRef = Roact.createRef()

	self.onAbsoluteSizeChange = function()
		local newWidth = self.tabSetRef.current.AbsoluteSize.x
		if self.state.currentWidth ~= newWidth then
			self:setState({
				currentWidth = newWidth
			})
		end
	end

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

function TabSet:createTab(key, currentTab, text, image, tabWidth, displayText)
	return Roact.createElement(Tab, {
		LayoutOrder = self:nextLayout(),
		Image = image,
		Text = text,
		Selected = key == currentTab,
		TabWidth = tabWidth,
		DisplayText = displayText,
		onClick = function()
			self.onTabSelected(key)
		end,
	})
end

local function calculateTabWidth(tabs, currentWidth)
	return #tabs > 0 and currentWidth/#tabs or 0
end

local function canTextBeDisplayed(tabs, maxWidth)
	if #tabs > 0 then
		for _, tab in ipairs(tabs) do
			local tabWidth = Constants.CalculateTabHeaderWidth(tab.Text)
			if tabWidth > maxWidth then
				return false
			end
		end
	end
	return true
end

function TabSet:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function TabSet:renderContent(theme)
	if FFlagToolboxRemoveWithThemes then
		theme = self.props.Stylizer
	end
	local size = self.props.Size or UDim2.new()
	local position = self.props.Position or UDim2.new()
	local tabs = self.props.Tabs or {}
	local currentTab = self.props.CurrentTab
	local tabTheme = theme.tabSet
	local currentWidth = self.state.currentWidth

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

	local tabWidth = calculateTabWidth(tabs, currentWidth)
	local displayText = canTextBeDisplayed(tabs, tabWidth)
	for _, tab in ipairs(tabs) do
		children[tab.Key] = self:createTab(tab.Key, currentTab, tab.Text, tab.Image, tabWidth, displayText)
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

		[Roact.Ref] = self.tabSetRef,
		[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
	}, children)
end

if FFlagToolboxRemoveWithThemes then	
	TabSet = withContext({
		Stylizer = ContextServices.Stylizer,
	})(TabSet)
end

return TabSet
