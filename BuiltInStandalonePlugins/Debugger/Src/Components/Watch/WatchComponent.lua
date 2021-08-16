local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local TreeTable = UI.TreeTable
local ControlledTabs = require(script.Parent.ControlledTabs)
local DropdownField = require(script.Parent.DropdownField)
local SearchBarField = require(script.Parent.SearchBarField)

local Models = Plugin.Src.Models
local VariableRow = require(Models.Watch.VariableRow)
local WatchRow = require(Models.Watch.WatchRow)
local TableTab = require(Models.Watch.TableTab)

local WatchComponent = Roact.PureComponent:extend("WatchComponent")

-- Type Declarations
export type WatchTab = { string : string }

-- Constants
local HEADER_HEIGHT = 32

-- Local Functions
local function generateSampleVariablesTable(numRows)
	local data = {
		name = "a",
		scope = "b",
		value = "c",
		dataType = "d",
		path = "e",
	}
	local row = VariableRow.fromData(data)
	local tab = {}
	for i = 1,numRows,1 do 
		table.insert(tab, row)
	end
	return tab
end

local function generateSampleWatchTable(numRows)
	local data = {
		expression = "v",
		scope = "w",
		value = "x",
		dataType = "y",
		path = "z",
	}
	local row = WatchRow.fromData(data)
	local tab = {}
	for i = 1,numRows,1 do 
		table.insert(tab, row)
	end
	return tab
end

-- WatchComponent
function WatchComponent:init()
	self.getTreeChildren = function(item)
		return item.children or {}
	end
end

function WatchComponent:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer
	
	local WatchTab = {
		Variables = localization:getText("Watch", "VariablesTab"),
		Watches = localization:getText("Watch", "WatchesTab"),
	}
	local tableTabs = {
		{
			Label = WatchTab.Variables,
			Key = "Variables",
		},
		{
			Label = WatchTab.Watches,
			Key = "Watches",
		},
	}
	local variableTableColumns = {
		{
			Name = localization:getText("Watch", "NameColumn"),
			Key = "nameColumn",
		}, {
			Name = localization:getText("Watch", "ScopeColumn"),
			Key = "scopeColumn",
		}, {
			Name = localization:getText("Watch", "ValueColumn"),
			Key = "valueColumn",
		}, {
			Name = localization:getText("Watch", "DataTypeColumn"),
			Key = "dataTypeColumn",
		}, 
	}
	local watchTableColumns = {
		{
			Name = localization:getText("Watch", "ExpressionColumn"),
			Key = "expressionColumn",
		}, {
			Name = localization:getText("Watch", "ScopeColumn"),
			Key = "scopeColumn",
		}, {
			Name = localization:getText("Watch", "ValueColumn"),
			Key = "valueColumn",
		}, {
			Name = localization:getText("Watch", "DataTypeColumn"),
			Key = "dataTypeColumn",
		}, 
	}
	
	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		Padding = 5,
	}, {
		HeaderView = Roact.createElement(Pane, {
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			Style = "Box",
		}, {
			TabView = Roact.createElement(ControlledTabs, {
				LayoutOrder = 1,
				Tabs = tableTabs,
			}),
			RightView = Roact.createElement(Pane, {
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				LayoutOrder = 2,
				AutomaticSize = Enum.AutomaticSize.X,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Layout = Enum.FillDirection.Horizontal,
				Spacing = 10,
			}, {
				DropdownView = Roact.createElement(DropdownField, {
					LayoutOrder = 1,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
				SearchBarView = Roact.createElement(SearchBarField, {
					LayoutOrder = 2,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
			})
		}),

		BodyView = Roact.createElement(Pane, {
			LayoutOrder = 2,
			Size = UDim2.new(1, 0, 1, -1 * HEADER_HEIGHT),
			Padding = 0,
			Style = "Box",
		}, {
			TableView = Roact.createElement(TreeTable, {
				Scroll = true,  
				Size = UDim2.fromScale(1, 1),
				Columns = props.SelectedTab == TableTab.Variables and variableTableColumns or watchTableColumns,
				RootItems = props.RootItems,
				Stylizer = style,
				Expansion = {},
				GetChildren = self.getTreeChildren,
				DisableTooltip = true,
			})
		}),
	})
end

-- RoactRodux Connection
WatchComponent = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(WatchComponent)

WatchComponent = RoactRodux.connect(
	function(state, props)
		local selectedTab = state.Watch.currentTab
		local variableTableRows = generateSampleVariablesTable(20) -- mock data which will be replaced in RIDE-5140
		local watchTableRows = generateSampleWatchTable(20) -- mock data which will be replaced in RIDE-5140
		local tableRowsForTab = {
			[TableTab.Variables] = variableTableRows,
			[TableTab.Watches] = watchTableRows,
		}
		local rootItems = tableRowsForTab[selectedTab] or {}
		return {
			SelectedTab = selectedTab,
			RootItems = rootItems,
		}
	end, nil
)(WatchComponent)

return WatchComponent
