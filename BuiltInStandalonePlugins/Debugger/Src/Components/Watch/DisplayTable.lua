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
local Util = Framework.Util
local deepCopy = Util.deepCopy

local Models = Plugin.Src.Models
local TableTab = require(Models.Watch.TableTab)

local Actions = Plugin.Src.Actions
local SetVariableExpanded = require(Actions.Watch.SetVariableExpanded)

local DisplayTable = Roact.PureComponent:extend("DisplayTable")

-- Local Functions
local function populateRootItems(roots, flattenedTreeCopy)
	if (#roots == 0) then
		return {}
	end
	
	local toReturn = {}
	for index, path in ipairs(roots) do
		local rootData = deepCopy(flattenedTreeCopy[path])
		local childrenData = populateRootItems(rootData.children, flattenedTreeCopy)
		rootData.children = childrenData

		table.insert(toReturn, rootData)
	end
	return toReturn
end

local function populateExpansionTable(rowItems, expansionTable, storeExpansionTable)
	if (#rowItems == 0) then
		return
	end
	
	for index, rowItem in ipairs(rowItems) do
		expansionTable[rowItem] = storeExpansionTable[rowItem.pathColumn]
		populateExpansionTable(rowItem.children, expansionTable, storeExpansionTable)
	end
end

local function applyFilters(rootItems, flattenedTreeCopy)
	local toReturn = {}
	for index, rowItem in ipairs(rootItems) do
		if (not flattenedTreeCopy[rowItem.pathColumn].textFilteredOut and not flattenedTreeCopy[rowItem.pathColumn].scopeFilteredOut) then
			table.insert(toReturn, rowItem)
		end
	end
	return toReturn
end
-- DisplayTable
function DisplayTable:init()
	self.getTreeChildren = function(item)
		return item.children or {}
	end
	
	self.onExpansionChange = function(newExpansion)
		for row, expandedBool in pairs(newExpansion) do
			self.props.onExpansionDispatch(row.pathColumn, expandedBool)
		end
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
		Expansion = props.ExpansionTable,
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
			local isVariablesTab = (tabState == TableTab.Variables)
			local watchVars = state.Watch.stateTokenToRoots[token]

			local roots = watchVars and watchVars[threadId] and watchVars[threadId][frameNumber]
			local rootsList = isVariablesTab and deepCopy(roots.Variables) or deepCopy(roots.Watches)

			local watchTree = state.Watch.stateTokenToFlattenedTree[token]
			local tree = watchTree and watchTree[threadId] and watchTree[threadId][frameNumber]
			local flattenedTreeCopy = isVariablesTab and deepCopy(tree.Variables) or deepCopy(tree.Watches)
			local rootItems = populateRootItems(rootsList, flattenedTreeCopy)
			rootItems = applyFilters(rootItems, flattenedTreeCopy)

			local expansionTable = {}
			local storeExpansionTable = isVariablesTab and state.Watch.pathToExpansionState or state.Watch.expressionToExpansionState
			populateExpansionTable(rootItems, expansionTable, storeExpansionTable)

			return {
				SelectedTab = tabState,
				RootItems = rootItems or {},
				ExpansionTable = expansionTable
			}
		end
	end,
	
	function(dispatch)
		return {
			onExpansionDispatch = function(path, expanded)
				return dispatch(SetVariableExpanded(path, expanded))
			end,
		}
	end
)(DisplayTable)

return DisplayTable
