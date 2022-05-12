local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Framework = require(PluginFolder.Packages.Framework)
local Cryo = require(PluginFolder.Packages.Cryo)

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

local Dash = Framework.Dash
local map = Dash.map
local join = Dash.join

local UI = Framework.UI
local Pane = UI.Pane
local TreeTable = UI.TreeTable
local IconButton = UI.IconButton

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

local StudioService = game:GetService("StudioService")

local FFlagDevFrameworkTableColumnResize = game:GetFastFlag("DevFrameworkTableColumnResize")
local FFlagDevFrameworkTableHeaderTooltip = game:GetFastFlag("DevFrameworkTableHeaderTooltip")
local hasTableColumnResizeFFlags = FFlagDevFrameworkTableColumnResize

local columnNameToKey = {
	FrameColumn = "frameColumn",
	LayerColumn = "layerColumn",
	SourceColumn = "sourceColumn",
	FunctionColumn = "functionColumn",
	LineColumn = "lineColumn",
}

local TABLE_PADDING = 1

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
	frameListCopy[index].scriptGUID = frameListCopy[index].sourceColumn
	local fileName = convertGUIDToFileName(frameListCopy[index].sourceColumn, scriptInfoReducer)
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
		arrowColumn = displayString,
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
	
	local initialSizes = nil
	if hasTableColumnResizeFFlags then 
		initialSizes = {
			UDim.new(1/5, 0),
			UDim.new(1/5, 0),
			UDim.new(1/5, 0),
			UDim.new(1/5, 0),
			UDim.new(1/5, 0),
		}
	end
	
	self.state = {
		selectedRows = {},
		selectAll = false,
		sizes = hasTableColumnResizeFFlags and initialSizes,
	}

	self.OnColumnSizesChange = function(newSizes : {UDim})
		if hasTableColumnResizeFFlags then
			self:setState(function(state)
				return { 
					sizes = newSizes,
				}
			end)
		end
	end

	self.getTreeChildren = function(item)
		return item.children or {}
	end
	
	self.onSelectionChange = function(selection)
		local props = self.props
		for rowInfo in pairs(selection) do
			if rowInfo.arrowColumn == "" then 
				rowInfo.arrowColumn = CallstackRow.ICON_CURRENT_FRAME
			end
			
			self:setState(function(state)
				return {
					selectedRows = {rowInfo},
					selectAll = false
				}
			end)
			local threadId = props.CurrentThreadId
			local frameNumber = rowInfo.frameColumn
			props.setCurrentFrameNumber(threadId, frameNumber)
			
			if rowInfo.scriptGUID ~= "" and rowInfo.sourceColumn ~= "" and rowInfo.lineColumn ~= "" and frameNumber then
				local DebuggerUIService = game:GetService("DebuggerUIService")
				
				-- If we click the top frame (the one with the yellow arrow), then we remove any curved blue arrows we are showing.
				if frameNumber > 1 then
					DebuggerUIService:SetScriptLineMarker(rowInfo.scriptGUID, props.CurrentDebuggerConnectionId, rowInfo.lineColumn, false)
				else
					DebuggerUIService:RemoveScriptLineMarkers(props.CurrentDebuggerConnectionId, false)
				end
				DebuggerUIService:OpenScriptAtLine(rowInfo.scriptGUID, props.CurrentDebuggerConnectionId, rowInfo.lineColumn)
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
		self:setState(function(state)
			return {
				selectedRows = selectedRowList,
				selectAll = true
			}
		end)
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
			self:setState(function(state)
				return {
					selectedRows = {row.item},
					selectAll = false
				}
			end)
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

	self.fetchOldColumnSizes = function(oldColumnNumber, prevProps)
		local oldColumnNameToSize = {}
		oldColumnNameToSize["ArrowColumn"] = self.state.sizes[1]

		for i = 2, oldColumnNumber do
			oldColumnNameToSize[prevProps.ColumnFilter[i-1]] = self.state.sizes[i]
		end

		return oldColumnNameToSize
	end

	self.updatedSizesAfterRemovingColumn = function(columnNumber, deletedColumnSize, oldColumnNameToSize)
		local updatedSizes = {}
		local remainingSpace = 1 - deletedColumnSize
		for i = 1, columnNumber do
			local currentColumn = if i == 1 then "ArrowColumn" else self.props.ColumnFilter[i-1]
			local newColumnSize = UDim.new((oldColumnNameToSize[currentColumn].Scale)/remainingSpace, 0)
			table.insert(updatedSizes, newColumnSize)			
		end
		return updatedSizes
	end

	self.updatedSizesAfterAddingColumns = function(columnNumber, oldColumnNumber, oldColumnNameToSize)
		local updatedSizes = {}
		local numOfColumnsAdded = columnNumber - oldColumnNumber
		local addedColumnSize = UDim.new(1/columnNumber, 0)
		for i = 1,columnNumber do
			local currentColumn = if i == 1 then "ArrowColumn" else self.props.ColumnFilter[i-1]
			if oldColumnNameToSize[currentColumn] == nil then
				-- Set new column to default size
				table.insert(updatedSizes, addedColumnSize)
			else
				-- With the remaining space (width - space for added columns), scale the column to the proportion it was on the previous resize.
				local spaceForAddedColumns = numOfColumnsAdded*addedColumnSize.Scale
				local newScale = (oldColumnNameToSize[currentColumn].Scale) * (1-spaceForAddedColumns)
				local newColumnSize = UDim.new(newScale, 0)
				table.insert(updatedSizes, newColumnSize)
			end
		end
		return updatedSizes
	end
end

function CallstackComponent:didUpdate(prevProps)
	if #self.props.ColumnFilter ~= #prevProps.ColumnFilter then
		-- add 1 for arrow column
		local columnNumber = #self.props.ColumnFilter + 1

		-- just arrow column (removing all columns/columnFilter is empty)
		if columnNumber == 1 then
			self:setState(function(state)
				return {
					sizes = {UDim.new(1, 0)}
				}
			end)
			return
		end

		local updatedSizes = {}

		-- columns have been resized so we need to scale the existing columns proportionally as we add/delete new columns
		local oldColumnNumber = #prevProps.ColumnFilter + 1
		local newColumnSet = Cryo.List.toSet(self.props.ColumnFilter)
		local oldColumnNameToSize = self.fetchOldColumnSizes(oldColumnNumber, prevProps)

		--removing single column
		if columnNumber < oldColumnNumber then
			local deletedColumnSize = nil
			for i = 2, oldColumnNumber do
				if newColumnSet[prevProps.ColumnFilter[i-1]] == nil then
					deletedColumnSize = oldColumnNameToSize[prevProps.ColumnFilter[i-1]].Scale
				end
			end
			updatedSizes = self.updatedSizesAfterRemovingColumn(columnNumber, deletedColumnSize, oldColumnNameToSize)

		--adding column(s)
		else
			updatedSizes = self.updatedSizesAfterAddingColumns(columnNumber, oldColumnNumber, oldColumnNameToSize)
		end
		
		self:setState(function(state)
			return {
				sizes = updatedSizes,
			}
		end)
	end

	self.onStepOver = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentDebuggerConnectionId)
		local thread = connection:GetThreadById(self.props.CurrentThreadId)
		connection:Step(thread, function() end)
	end

	self.onStepInto = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentDebuggerConnectionId)
		local thread = connection:GetThreadById(self.props.CurrentThreadId)
		connection:StepIn(thread, function() end)
	end

	self.onStepOut = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentDebuggerConnectionId)
		local thread = connection:GetThreadById(self.props.CurrentThreadId)
		connection:StepOut(thread, function() end)
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
			Tooltip = FFlagDevFrameworkTableHeaderTooltip and localization:getText("Callstack", v .. 'Tooltip') or nil,
		}
		table.insert(tableColumns, currCol)
	end
	
	if hasTableColumnResizeFFlags then
		local widthsToUse = self.state.sizes
		tableColumns = map(tableColumns, function(column, index: number)
			return join(column, {
				Width = widthsToUse[index]
			})
		end)
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
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {			
			ButtonContainer = Roact.createElement(Pane, {
				Size = UDim2.new(0.5, 0, 0, Constants.HEADER_HEIGHT),
				LayoutOrder = 1,
				Style = "Box",
				Layout = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}, {
				StepOverButton = Roact.createElement(IconButton, {
					Size = UDim2.new(0, Constants.BUTTON_SIZE, 0, Constants.BUTTON_SIZE),
					LayoutOrder = 1,
					LeftIcon = "rbxasset://textures/Debugger/Step-Over.png",
					TooltipText = localization:getText("Common", "stepOverActionV2"),
					OnClick = self.onStepOver,
					Disabled = self.props.CurrentThreadId == nil,
				}),
				StepIntoButton = Roact.createElement(IconButton, {
					Size = UDim2.new(0, Constants.BUTTON_SIZE, 0, Constants.BUTTON_SIZE),
					LayoutOrder = 2,
					LeftIcon = "rbxasset://textures/Debugger/Step-In.png",
					TooltipText = localization:getText("Common", "stepIntoActionV2"),
					OnClick = self.onStepInto,
					Disabled = self.props.CurrentThreadId == nil,
				}),
				StepOutButton = Roact.createElement(IconButton, {
					Size = UDim2.new(0, Constants.BUTTON_SIZE, 0, Constants.BUTTON_SIZE),
					LayoutOrder = 3,
					LeftIcon = "rbxasset://textures/Debugger/Step-Out.png",
					TooltipText = localization:getText("Common", "stepOutActionV2"),
					OnClick = self.onStepOut,
					Disabled = self.props.CurrentThreadId == nil,
				}),
			}),
			ColContainer = Roact.createElement(Pane, {
				Size = UDim2.new(0.5, 0, 0, Constants.HEADER_HEIGHT),
				Padding = 5,
				Spacing = 10,
				LayoutOrder = 2,
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
				FullSpan = true,
				HighlightedRows = self.state.selectedRows,
				OnColumnSizesChange = if hasTableColumnResizeFFlags then self.OnColumnSizesChange else nil,
				UseDeficit = if hasTableColumnResizeFFlags then false else nil,
				UseScale = if hasTableColumnResizeFFlags then true else nil,
				ClampSize = if hasTableColumnResizeFFlags then true else nil,
				Padding = TABLE_PADDING,
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
		local callstack = state.Callstack
		if common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId] == nil then
			return {
				RootItems = {},
				CurrentThreadId = nil,
				ColumnFilter = callstack.listOfEnabledColumns,
			}
		else
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
				ColumnFilter = deepCopy(callstack.listOfEnabledColumns),
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
				local DebuggerUIService = game:GetService("DebuggerUIService")
				DebuggerUIService:SetCurrentThreadId(threadId)
				return dispatch(SetCurrentThread(threadId))
			end,
		}
	end
)(CallstackComponent)

return CallstackComponent
