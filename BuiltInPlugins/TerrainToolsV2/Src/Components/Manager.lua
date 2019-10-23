--[[
	This component connects Rodux to the ui and manages its layout. It is
	composed of 3 frames: tabs, tools, and then tool components.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local Localizing = require(Plugin.Packages.UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local Components = Plugin.Src.Components
local Tab = require(Components.Tab)
local ToolManager = require(Components.ToolManager)
local ToolRenderer = require(Components.ToolRenderer)

local Actions = Plugin.Src.Actions
local ChangeTab = require(Actions.ChangeTab)
local ChangeTool = require(Actions.ChangeTool)

local Manager = Roact.Component:extend(script.Name)

-- Seperate because of weird UIListLayout behavior - just creates top tab layer
local function createTabs(props)
	local dispatchChangeTab = props.dispatchChangeTab
	local currTab = props.currentTab

	local selected = Color3.fromRGB(186, 187, 186)
	local default = Color3.fromRGB(227, 227, 227)

	return withLocalization(function(localization)
		local buttonSize = UDim2.new(.2, 0, 1, 0)
		return Roact.createFragment({
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Create = Roact.createElement(Tab, {
				Size = buttonSize,
				Name = localization:getText("Tab", "Create"),
				OnClick = dispatchChangeTab,
				Current = currTab == "Create",
				LayoutOrder = 0,
			}),
			Region = Roact.createElement(Tab, {
				Size = buttonSize,
				Name = localization:getText("Tab", "Region"),
				LayoutOrder = 1,
				Current = currTab == "Region",
				OnClick = dispatchChangeTab,

			}),
			Build = Roact.createElement(Tab, {
				Size = buttonSize,
				Name = localization:getText("Tab", "Build"),
				OnClick = dispatchChangeTab,
				Current = currTab == "Build",
				LayoutOrder = 2,
			}),
			Sculpt = Roact.createElement(Tab, {
				Size = buttonSize,
				Name = localization:getText("Tab", "Sculpt"),
				OnClick = dispatchChangeTab,
				Current = currTab == "Sculpt",
				LayoutOrder = 3,
			}),
			Paint = Roact.createElement(Tab, {
				Size = buttonSize,
				Name = localization:getText("Tab", "Paint"),
				OnClick = dispatchChangeTab,
				Current = currTab == "Paint",
				LayoutOrder = 4,
			}),
		})
	end)
end

function Manager:render()
	local currentTab = self.props.currentTab
	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = theme.backgroundColor,
		}, {
			UILayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 14),
				SortOrder = Enum.SortOrder.LayoutOrder
			}),

			Tabs = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 29),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, createTabs(self.props)),

			ToolBar = Roact.createElement(ToolManager, {
				CurrentTab = currentTab,
				LayoutOrder = 2,
			}),

			ToolPanel = Roact.createElement(ToolRenderer, {
				LayoutOrder = 3,
			}),
		})
	end)
end

local function MapStateToProps (state, props)
	return {
		currentTab = state.Tools.currentTab,
	}
end

local function MapDispatchToProps (dispatch)
	return {
		dispatchChangeTab = function (tabName)
			dispatch(ChangeTab(tabName))
		end,
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Manager)