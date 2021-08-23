local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local TreeTable = UI.TreeTable
local Stylizer = Framework.Style.Stylizer

local Models = Plugin.Src.Models
local TableTab = require(Models.Watch.TableTab)

local Util = Framework.Util
local deepCopy = Util.deepCopy

local Dash = Framework.Dash
local join = Dash.join

local DisplayTable = Roact.PureComponent:extend("DisplayTable")

-- Local Functions
local function populateTable(roots, tree)
	if (#roots == 0) then
		return {}
	end
	
	local tab = {}
	for k, v in ipairs(roots) do
		local rootData = deepCopy(tree[v])
		local childrenData = populateTable(rootData.children, tree)
		rootData.children = childrenData
		table.insert(tab, rootData)
	end
	return tab
end

-- DisplayTable
function DisplayTable:init()
	self.state = {
		Expansion = {},
	}
	
	self.getTreeChildren = function(item)
		return item.children or {}
	end
	
	self.onExpansionChange = function(newExpansion)
		self:setState({
			Expansion = join(self.state.Expansion, newExpansion)
		})
	end
end

function DisplayTable:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer	
	
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

	return Roact.createElement(TreeTable, {
		Scroll = true,  
		Size = UDim2.fromScale(1, 1),
		Columns = props.SelectedTab == TableTab.Variables and variableTableColumns or watchTableColumns,
		RootItems = props.RootItems,
		Stylizer = style,
		OnExpansionChange = self.onExpansionChange,
		GetChildren = self.getTreeChildren,
		Expansion = self.state.Expansion,
		DisableTooltip = true,
	})
end

-- RoactRoduxConnection
DisplayTable = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(DisplayTable)

DisplayTable = RoactRodux.connect(
	function(state, props)
		if state.Common.currentThreadId == -1 then
			return {
				SelectedTab = nil,
				RootItems = {},
			}
		else
			assert(#state.Common.debuggerStateTokenHistory >= 1)
			local threadId = state.Common.currentThreadId
			local frameNumber = state.Common.threadIdToCurrentFrameNumber[threadId]
			local token = state.Common.debuggerStateTokenHistory[#state.Common.debuggerStateTokenHistory]	

			local tabState = state.Watch.currentTab
			local watchVars = state.Watch.stateTokenToRoots[token]

			local roots = watchVars and watchVars[threadId] and watchVars[threadId][frameNumber]
			local rootsList = tabState == TableTab.Variables and deepCopy(roots.Variables) or deepCopy(roots.Watches)
			
			local watchTree = state.Watch.stateTokenToFlattenedTree[token]
			local tree = watchTree and watchTree[threadId] and watchTree[threadId][frameNumber]
			local treeList = tabState == TableTab.Variables and deepCopy(tree.Variables) or deepCopy(tree.Watches)
			local rootItems = populateTable(rootsList, treeList)
			
			return {
				SelectedTab = tabState,
				RootItems = rootItems or {},
			}
		end
	end, nil
)(DisplayTable)

return DisplayTable
