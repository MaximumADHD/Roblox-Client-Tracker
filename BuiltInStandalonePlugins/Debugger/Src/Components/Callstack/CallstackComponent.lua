local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Framework = require(PluginFolder.Packages.Framework)

local CallstackDropdownField = require(script.Parent.CallstackDropdownField)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local PluginActions = ContextServices.PluginActions
local Plugin = ContextServices.Plugin

local Stylizer = Framework.Style.Stylizer

local Util = Framework.Util
local deepCopy = Util.deepCopy

local UI = Framework.UI
local Pane = UI.Pane
local TreeTable = UI.TreeTable

local StudioUI = Framework.StudioUI
local showContextMenu = StudioUI.showContextMenu

local UtilFolder = PluginFolder.Src.Util
local MakePluginActions = require(UtilFolder.MakePluginActions)

local Actions = PluginFolder.Src.Actions
local SetCurrentFrameNumber = require(Actions.Callstack.SetCurrentFrameNumber)
local SetCurrentThread = require(Actions.Callstack.SetCurrentThread)

local Models = PluginFolder.Src.Models
local CallstackRow = require(Models.Callstack.CallstackRow)

local CallstackComponent = Roact.PureComponent:extend("CallstackComponent")

local Constants = require(PluginFolder.Src.Util.Constants)

local FFlagDevFrameworkTableAddFullSpanFunctionality = game:GetFastFlag("DevFrameworkTableAddFullSpanFunctionality")
local FFlagDevFrameworkHighlightTableRows = game:GetFastFlag("DevFrameworkHighlightTableRows")

local StudioService = game:GetService("StudioService")

local columnNameToKey = {
	FrameColumn = "frameColumn",
	LayerColumn = "layerColumn",
	SourceColumn = "sourceColumn",
	FunctionColumn = "functionColumn",
	LineColumn = "lineColumn",
}

-- Local Functions
local function setArrowIcon(index, frameData, frameListCopy, currentFrameNumber)
	if (index == 1) then
		frameListCopy[index].arrowColumn = CallstackRow.ICON_FRAME_TOP
	elseif (frameData.frameColumn == currentFrameNumber) then
		frameListCopy[index].arrowColumn = CallstackRow.ICON_CURRENT_FRAME
	else
		frameListCopy[index].arrowColumn = ""
	end
end

local function convertGUIDToFileName(guid, scriptInfoReducer)
	return scriptInfoReducer.ScriptInfo[guid]
end

local function convertSourceCol(index, frameData, frameListCopy, scriptInfoReducer)
	local fileName = convertGUIDToFileName(frameListCopy[index].sourceColumn, scriptInfoReducer)
	assert(fileName ~= nil and fileName ~= "")
	frameListCopy[index].sourceColumn = fileName
end

local function makeCallstackRootItem(threadInfo, callstackVars, common, scriptInfoReducer)
	local displayString = threadInfo.displayString
	local threadId = threadInfo.threadId
	local currentFrameNumber = common.currentFrameMap[common.currentDebuggerConnectionId][threadId]
	
	local frameList = callstackVars.threadIdToFrameList and callstackVars.threadIdToFrameList[threadId]
	if frameList == nil then
		return nil
	end
	
	local frameListCopy = deepCopy(frameList)
	for index, frameData in ipairs(frameListCopy) do
		setArrowIcon(index, frameData, frameListCopy, currentFrameNumber)
		convertSourceCol(index, frameData, frameListCopy, scriptInfoReducer)
	end

	return {
		arrowColumn = convertGUIDToFileName(displayString, scriptInfoReducer),
		threadId = threadId,
		children = frameListCopy,
	}
end

function CallstackComponent:addAction(action, func)
	if action then
		action.Enabled = true
		table.insert(self.shortcuts, action)
		table.insert(self.connections , action.Triggered:Connect(func))
	end
end

function CallstackComponent:didMount()
	local pluginActions = self.props.PluginActions
	self.connections  = {}
	self.shortcuts = {}
	self:addAction(pluginActions:get(Constants.CallstackActionIds.CopySelected), self.copySelectedRows)
	self:addAction(pluginActions:get(Constants.CallstackActionIds.SelectAll), self.selectAllRows)
end

function CallstackComponent:willUnmount()
	if self.connections  then
		for _, connection in ipairs(self.connections ) do
			connection:Disconnect()
		end
		self.connections  = {}
	end
	if self.shortcuts then
		for _, action in ipairs(self.shortcuts) do
			action.Enabled = false
		end
		self.shortcuts = {}
	end
end

-- CallstackComponent
function CallstackComponent:init()
	self.state = {
		selectedRows = {},
		selectAll = false,
	}
	
	self.getTreeChildren = function(item)
		return item.children or {}
	end
	
	self.onSelectionChange = function(selection)
		local props = self.props
		for rowInfo in pairs(selection) do
			if rowInfo.arrowColumn == "" then 
				rowInfo.arrowColumn = CallstackRow.ICON_CURRENT_FRAME
			end
			
			self:setState({
				selectedRows = {rowInfo},
				selectAll = false
			})
			local threadId = props.CurrentThreadId
			local frameNumber = rowInfo.frameColumn
			props.setCurrentFrameNumber(threadId, frameNumber)
			
			if rowInfo.sourceColumn and rowInfo.lineColumn then
				local DebuggerUIService = game:GetService("DebuggerUIService")
				DebuggerUIService:OpenScriptAtLine(rowInfo.sourceColumn, props.CurrentDebuggerConnectionId, rowInfo.lineColumn)
			end
		end
	end
	
	self.rowToString = function(row)
		local rowString = ""
		for _, v in pairs(self.props.ColumnFilter) do
			if typeof(row[columnNameToKey[v]]) == "EnumItem" then
				rowString = rowString .. row[columnNameToKey[v]].Name .. '\t'
			else
				rowString = rowString .. row[columnNameToKey[v]] .. '\t'
			end
		end
		return rowString
	end

	self.copySelectedRows = function()
		local selectedRows = self.state.selectedRows
		if #selectedRows == 0 then
			return
		end
		
		local selectedRowsString = ""	
		
		for _, currRow in ipairs(selectedRows) do
			-- If a non-header row is selected
			if #self.getTreeChildren(currRow) == 0 then
				selectedRowsString = selectedRowsString .. self.rowToString(currRow) .. '\n'

			-- If a header row for a thread was selected
			else
				selectedRowsString = selectedRowsString .. currRow.arrowColumn .. '\n'
				for _, childRow in ipairs(currRow.children) do
					selectedRowsString = selectedRowsString .. self.rowToString(childRow) .. '\n'
				end
			end
		end
		
		StudioService:CopyToClipboard(selectedRowsString)
	end
	
	self.selectAllRows = function()
		local props = self.props
		local selectedRowList = {}
		
		if #self.state.selectedRows == 1 then
			local currRow = self.state.selectedRows[1]
			if currRow.threadId and currRow.threadId ~= props.CurrentThreadId then
				return
			end
		end
		
		for _, thread in ipairs(props.RootItems) do
			if props.CurrentThreadId == thread.threadId then
				for _, row in ipairs(self.getTreeChildren(thread)) do
					table.insert(selectedRowList, row)
				end
			end
		end
		self:setState({
			selectedRows = selectedRowList,
			selectAll = true
		})
	end
	
	self.onMenuActionSelected = function(actionId, extraParameters)
		if actionId == Constants.CallstackActionIds.CopySelected then
			self.copySelectedRows()
		elseif actionId == Constants.CallstackActionIds.SelectAll then
			self.selectAllRows()
		end
	end
	
	self.onRightClick = function(row)
		-- Update selectedRows to the right clicked row unless "Select All" was called
		-- and right clicked row is one of the selected rows
		if not self.state.selectAll or (row.item.threadId and row.item.threadId ~= self.props.CurrentThreadId) then
			self:setState({
				selectedRows = {row.item},
				selectAll = false
			})
		end
		local props = self.props
		local localization = props.Localization
		local plugin = props.Plugin:get()
		local actions = MakePluginActions.getCallstackActions(localization)
		showContextMenu(plugin, "Callstack", actions, self.onMenuActionSelected, {row = row})
	end

	self.onExpansionChange = function(newExpansion)
		for row, expandedBool in pairs(newExpansion) do
			self.props.onExpansionClicked(row.threadId)
		end
	end
	
	self.getTreeChildren = function(item)
		return item.children or {}
	end
end

function CallstackComponent:render()
	local props = self.props
	local localization = props.Localization
	local style = self.props.Stylizer
	local visibleColumns = props.ColumnFilter or {}
	
	local tableColumns = {
		{
			Name = "",
			Key = "arrowColumn",
		},
	}
	
	for _, v in pairs(visibleColumns) do
		local currCol = {
			Name = localization:getText("Callstack", v),
			Key = columnNameToKey[v],
		}
		table.insert(tableColumns, currCol)
	end

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		Padding = 5,
	}, {
		HeaderView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, Constants.HEADER_HEIGHT),
			Padding = 5,
			Spacing = 10,
			LayoutOrder = 1,
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
		}, {			
			ColumnDropdown = Roact.createElement(CallstackDropdownField, {
				LayoutOrder = 1,
				AutomaticSize = Enum.AutomaticSize.X,
			})
		}),
		BodyView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -1 * Constants.HEADER_HEIGHT),
			Padding = 5,
			LayoutOrder = 2,
			Style = "Box",
		}, {
			TableView = Roact.createElement(TreeTable, {
				Scroll = true,  
				Size = UDim2.fromScale(1, 1),
				Columns = tableColumns,
				RootItems = props.RootItems,
				Stylizer = style,
				Expansion = props.ExpansionTable,
				GetChildren = self.getTreeChildren,
				DisableTooltip = false,
				OnSelectionChange = self.onSelectionChange,
				RightClick = self.onRightClick,
				OnExpansionChange = self.onExpansionChange,
				FullSpan = FFlagDevFrameworkTableAddFullSpanFunctionality and true,
				HighlightedRows = (FFlagDevFrameworkHighlightTableRows and self.state.selectedRows) or nil,
			})
		}),
	})
end

-- RoactRodux Connection
CallstackComponent = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	PluginActions = PluginActions,
	Plugin = Plugin,
})(CallstackComponent)

CallstackComponent = RoactRodux.connect(
	function(state, props)
		local common = state.Common
		if common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId] == nil then
			return {
				RootItems = {},
				CurrentThreadId = nil,
			}
		else
			local callstack = state.Callstack
			local currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]
			local address = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
			local callstackVars = callstack.stateTokenToCallstackVars[address]
			assert(callstackVars)
			local threadList = callstackVars.threadList

			local rootList = {}
			local expansionTable = nil
			for _, threadInfo in ipairs(threadList) do
				local rootItem = makeCallstackRootItem(threadInfo, callstackVars, common, state.ScriptInfo)
				if rootItem then
					table.insert(rootList, rootItem)
					if (threadInfo.threadId == currentThreadId) then
						expansionTable = {[rootItem] = true}
					end
				end
			end

			return {
				RootItems = rootList,
				CurrentThreadId = currentThreadId,
				ExpansionTable = expansionTable,
				ColumnFilter = callstack.listOfEnabledColumns,
				CurrentDebuggerConnectionId = common.currentDebuggerConnectionId,
			}
		end
	end,

	function(dispatch)
		return {
			setCurrentFrameNumber = function(threadId, frameNumber)
				return dispatch(SetCurrentFrameNumber(threadId, frameNumber))
			end,
			onExpansionClicked = function(threadId)
				return dispatch(SetCurrentThread(threadId))
			end,
		}
	end
)(CallstackComponent)

return CallstackComponent
