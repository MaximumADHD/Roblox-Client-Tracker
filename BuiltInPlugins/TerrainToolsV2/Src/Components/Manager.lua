--[[
	This component connects Rodux to the ui and manages its layout. It is
	composed of 3 frames: tabs, tools, and then tool components.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local TabId = TerrainEnums.TabId

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

local FFlagTerrainToolsRefactorTabsAndTools = game:GetFastFlag("TerrainToolsRefactorTabsAndTools")

local Manager = Roact.PureComponent:extend(script.Name)
local TabOrder = {
	TabId.Create,
	TabId.Region,
	TabId.Edit,
}

-- Separate because of weird UIListLayout behavior - just creates top tab layer
local function createTabs(props)
	local dispatchChangeTab = props.dispatchChangeTab
	local currTab = props.currentTab

	local buttonSize = UDim2.new(1 / #TabOrder, 0, 1, 0)

	if FFlagTerrainToolsRefactorTabsAndTools then
		local fragment = {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center
			}),
		}

		for i, tabId in ipairs(TabOrder) do
			fragment[tabId] = Roact.createElement(Tab, {
				TabId = tabId,
				Size = buttonSize,
				OnClick = dispatchChangeTab,
				IsCurrent = currTab == tabId,
				LayoutOrder = i,
			})
		end

		return Roact.createFragment(fragment)
	else
		return withLocalization(function(localization)
			return Roact.createFragment({
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = Enum.HorizontalAlignment.Center
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
				Edit = Roact.createElement(Tab, {
					Size = buttonSize,
					Name = localization:getText("Tab", "Edit"),
					OnClick = dispatchChangeTab,
					Current = currTab == "Edit",
					LayoutOrder = 2,
				}),
			})
		end)
	end
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
