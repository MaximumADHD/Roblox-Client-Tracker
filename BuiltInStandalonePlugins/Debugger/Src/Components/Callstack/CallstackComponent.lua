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
local AnalyticsEventNames = require(PluginFolder.Src.Resources.AnalyticsEventNames)

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
local ColumnResizeHelperFunctions = require(UtilFolder.ColumnResizeHelperFunctions)

local Actions = PluginFolder.Src.Actions
local SetCurrentFrameNumber = require(Actions.Callstack.SetCurrentFrameNumber)
local ColumnFilterChange = require(Actions.Callstack.ColumnFilterChange)

local LoadAllVariablesForThreadAndFrame = require(PluginFolder.Src.Thunks.Watch.LoadAllVariablesForThreadAndFrame)
local PopulateCallstackThreadThunk = require(PluginFolder.Src.Thunks.Callstack.PopulateCallstackThreadThunk)
local FFlagOnlyLoadOneCallstack = require(PluginFolder.Src.Flags.GetFFlagOnlyLoadOneCallstack)

local Models = PluginFolder.Src.Models
local CallstackRow = require(Models.Callstack.CallstackRow)

local CallstackComponent = Roact.PureComponent:extend("CallstackComponent")

local Constants = require(PluginFolder.Src.Util.Constants)

local StudioService = game:GetService("StudioService")

local FFlagDevFrameworkExpandColumnOnDoubleClickDragbar = game:GetFastFlag("DevFrameworkExpandColumnOnDoubleClickDragbar")

local defaultColumnKey = {
	[1] = "arrowColumn",
}

local columnNameToKey = {
	FrameColumn = "frameColumn",
	SourceColumn = "sourceColumn",
	FunctionColumn = "functionColumn",
	LineColumn = "lineColumn",
}

local columnNameToProportion = {
	ArrowColumn = 0.5,
	FrameColumn = 0.5,
	SourceColumn = 1.5,
	FunctionColumn = 1.0,
	LineColumn = 0.5,
}

local CALLSTACK_WINDOW_CONFIGS = "callstackWindowConfigs"

local TABLE_PADDING = 1

-- Local Functions
local function setArrowIcon(index, frameData, frameListCopy, currentFrameNumber)
	if index == 1 then
		frameListCopy[index].arrowColumn = CallstackRow.ICON_FRAME_TOP
	elseif frameData.frameColumn == currentFrameNumber then
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
	if frameList == nil  and not FFlagOnlyLoadOneCallstack() then
		return nil
	end

	local frameListCopy = nil
	if FFlagOnlyLoadOneCallstack then 
		-- We add a fake child with an invalid LineColumn as a shorthand for "unpopulated"
		local fakeChild = {
			[1] = {
				["frameColumn"] = 1,
				["functionColumn"] = "",
				["lineColumn"] = -1,
				["sourceColumn"] = displayString,
			}
		}
		frameListCopy = if frameList then deepCopy(frameList) else fakeChild
	else
		frameListCopy = deepCopy(frameList)
	end
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
		table.insert(self.connections, action.Triggered:Connect(func))
	end
end

function CallstackComponent:didMount()
	local props = self.props
	local plugin = props.Plugin:get()
	local configs = plugin:GetSetting(CALLSTACK_WINDOW_CONFIGS)
	if configs and configs[Constants.ColumnSize] and configs[Constants.ColumnFilter] then
		props.onColumnFilterChange(configs[Constants.ColumnFilter])
		self:setState(function(state)
			return {
				sizes = ColumnResizeHelperFunctions.fetchSizesFromColumnScales(configs[Constants.ColumnSize]),
			}
		end)
	end

	local pluginActions = self.props.PluginActions
	self.connections = {}
	self.shortcuts = {}
	self:addAction(pluginActions:get(Constants.CallstackActionIds.CopySelected), self.copySelectedRows)
	self:addAction(pluginActions:get(Constants.CallstackActionIds.SelectAll), self.selectAllRows)
end

function CallstackComponent:willUnmount()
	local props = self.props
	local plugin = props.Plugin:get()
	local configs = {}
	configs[Constants.ColumnFilter] = props.ColumnFilter
	configs[Constants.ColumnSize] = ColumnResizeHelperFunctions.fetchScaleFromColumnSizes(self.state.sizes)
	plugin:SetSetting(CALLSTACK_WINDOW_CONFIGS, configs)

	if self.connections then
		for _, connection in ipairs(self.connections) do
			connection:Disconnect()
		end
		self.connections = {}
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
	local initialSizes = {}

	local totalScaleDenominator = columnNameToProportion.ArrowColumn
	for i = 1, #self.props.ColumnFilter do
		totalScaleDenominator = totalScaleDenominator + columnNameToProportion[self.props.ColumnFilter[i]]
	end

	table.insert(initialSizes, UDim.new(columnNameToProportion.ArrowColumn / totalScaleDenominator, 0))
	for i = 1, #self.props.ColumnFilter do
		table.insert(initialSizes, UDim.new(columnNameToProportion[self.props.ColumnFilter[i]] / totalScaleDenominator, 0))
	end

	self.state = {
		selectedRows = {},
		selectAll = false,
		sizes = initialSizes,
	}

	self.OnColumnSizesChange = function(newSizes: { UDim })
		self:setState(function(state)
			return {
				sizes = newSizes,
			}
		end)
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
					selectedRows = { rowInfo },
					selectAll = false,
				}
			end)
			local threadId = props.CurrentThreadId
			local frameNumber = rowInfo.frameColumn
			props.setCurrentFrameNumber(threadId, frameNumber)

			self.props.Analytics:report(AnalyticsEventNames.CallstackChangeFrame, "CallstackComponent")

			if rowInfo.scriptGUID ~= "" and rowInfo.sourceColumn ~= "" and rowInfo.lineColumn ~= "" and frameNumber then
				local DebuggerUIService = game:GetService("DebuggerUIService")

				-- If we click the top frame (the one with the yellow arrow), then we remove any curved blue arrows we are showing.
				if frameNumber > 1 then
					DebuggerUIService:SetScriptLineMarker(
						rowInfo.scriptGUID,
						props.CurrentDebuggerConnectionId,
						rowInfo.lineColumn,
						false
					)
				else
					DebuggerUIService:RemoveScriptLineMarkers(props.CurrentDebuggerConnectionId, false)
				end
				DebuggerUIService:OpenScriptAtLine(
					rowInfo.scriptGUID,
					props.CurrentDebuggerConnectionId,
					rowInfo.lineColumn,
					false
				)
				
				props.onCurrentFrameChanged(props.CurrentDebuggerConnectionId, threadId, frameNumber)
			end
		end
	end

	self.rowToString = function(row)
		local rowString = ""
		for _, v in pairs(self.props.ColumnFilter) do
			if typeof(row[columnNameToKey[v]]) == "EnumItem" then
				rowString = rowString .. row[columnNameToKey[v]].Name .. "\t"
			else
				rowString = rowString .. row[columnNameToKey[v]] .. "\t"
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
				selectedRowsString = selectedRowsString .. self.rowToString(currRow) .. "\n"

				-- If a header row for a thread was selected
			else
				selectedRowsString = selectedRowsString .. currRow.arrowColumn .. "\n"
				for _, childRow in ipairs(currRow.children) do
					selectedRowsString = selectedRowsString .. self.rowToString(childRow) .. "\n"
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
				selectAll = true,
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
					selectedRows = { row.item },
					selectAll = false,
				}
			end)
		end
		local props = self.props
		local localization = props.Localization
		local plugin = props.Plugin:get()
		local actions = MakePluginActions.getCallstackActions(localization)
		showContextMenu(
			plugin,
			"Callstack",
			actions,
			self.onMenuActionSelected,
			{ row = row },
			Constants.CallstackActionsOrder
		)
	end

	self.onExpansionChange = function(newExpansion)
		for row, expandedBool in pairs(newExpansion) do
			local currentDebuggerConnectionId = self.props.CurrentDebuggerConnectionId
			if FFlagOnlyLoadOneCallstack() then
				local currentDST = self.props.CurrentDST
				local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
				local connection = debuggerConnectionManager:GetConnectionById(currentDebuggerConnectionId)
				local topFrame = row.children[1]
				local isCallstackPopulated = topFrame.lineColumn ~= -1
				local threadId = row.threadId
				if isCallstackPopulated then
					local debuggerUIService = game:GetService("DebuggerUIService")
					debuggerUIService:OpenScriptAtLine(topFrame.scriptGUID, currentDebuggerConnectionId, topFrame.lineColumn, false)
					debuggerUIService:SetScriptLineMarker(
						topFrame.scriptGUID,
						currentDebuggerConnectionId,
						topFrame.lineColumn,
						true
					)
					self.props.onLoadAllVariablesForThreadAndFrame(threadId, connection, 0, debuggerUIService)
				else
					local scriptChangeService = game:GetService("CrossDMScriptChangeListener")
					local threadState = connection:GetThreadById(threadId)
					self.props.onPopulateCallstackThreadThunk(threadState, connection, currentDST, scriptChangeService, function()
						if currentDST == self.props.CurrentDST then
							self.loadThreadData(threadState, currentDebuggerConnectionId, self)
						end
					end)
				end
			else
				self.props.onExpansionClicked(row.threadId, row.children[1], currentDebuggerConnectionId)
			end
		end
	end

	self.getTreeChildren = function(item)
		return item.children or {}
	end

	self.onStepOver = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentDebuggerConnectionId)
		local thread = connection:GetThreadById(self.props.CurrentThreadId)
		connection:Step(thread, function() end)

		self.props.Analytics:report(AnalyticsEventNames.CallstackStepOver, "CallstackComponent")
	end

	self.onStepInto = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentDebuggerConnectionId)
		local thread = connection:GetThreadById(self.props.CurrentThreadId)
		connection:StepIn(thread, function() end)

		self.props.Analytics:report(AnalyticsEventNames.CallstackStepInto, "CallstackComponent")
	end

	self.onStepOut = function()
		local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
		local connection = debuggerConnectionManager:GetConnectionById(self.props.CurrentDebuggerConnectionId)
		local thread = connection:GetThreadById(self.props.CurrentThreadId)
		connection:StepOut(thread, function() end)

		self.props.Analytics:report(AnalyticsEventNames.CallstackStepOut, "CallstackComponent")
	end

	self.loadThreadData = function(threadState, currentDebuggerConnectionId)
		local debuggerUIService = game:GetService("DebuggerUIService")
		self.props.setCurrentFrameNumber(threadState.ThreadId, 1)
		self.props.onCurrentFrameChanged(currentDebuggerConnectionId, threadState.ThreadId, 1)
		-- Open script at top of callstack
		local topFrame = threadState:GetFrame(0)
		debuggerUIService:SetScriptLineMarker(
			topFrame.Script,
			currentDebuggerConnectionId,
			topFrame.Line,
			true
		)
		debuggerUIService:OpenScriptAtLine(topFrame.Script, currentDebuggerConnectionId, topFrame.Line, false)
	end
end

function CallstackComponent:didUpdate(prevProps)
	local props = self.props
	-- add 1 for arrow column (default key)
	local columnNumber = #props.ColumnFilter + #defaultColumnKey

	-- if #state.sizes == columnNumber but the ColumnFilter size changed we have loaded the user's saved column sizes into the state
	-- in didMount(), and this didUpdate() was triggered from dispatching the saved ColumnFilter, rather than the user adding/deleting visible columns.
	if #props.ColumnFilter ~= #prevProps.ColumnFilter and #self.state.sizes ~= columnNumber then
		local updatedSizes = {}

		-- columns have been resized so we need to scale the existing columns proportionally as we add/delete new columns
		local oldColumnNumber = #prevProps.ColumnFilter + #defaultColumnKey
		local newColumnSet = Cryo.List.toSet(props.ColumnFilter)
		local oldColumnNameToSize = ColumnResizeHelperFunctions.fetchOldColumnSizes(
			oldColumnNumber,
			prevProps.ColumnFilter,
			defaultColumnKey,
			self.state.sizes
		)

		if columnNumber < oldColumnNumber then
			--removing column(s)
			local deletedColumnsSize = ColumnResizeHelperFunctions.fetchDeletedColumnsSize(
				#defaultColumnKey,
				oldColumnNumber,
				prevProps.ColumnFilter,
				oldColumnNameToSize,
				newColumnSet
			)
			updatedSizes = ColumnResizeHelperFunctions.updatedSizesAfterRemovingColumns(
				columnNumber,
				deletedColumnsSize,
				oldColumnNameToSize,
				defaultColumnKey,
				props.ColumnFilter
			)
		else
			--adding column(s)
			updatedSizes = ColumnResizeHelperFunctions.updatedSizesAfterAddingColumns(
				columnNumber,
				oldColumnNumber,
				oldColumnNameToSize,
				props.ColumnFilter,
				defaultColumnKey
			)
		end

		self:setState(function(state)
			return {
				sizes = updatedSizes,
			}
		end)
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
			Key = defaultColumnKey[1],
		},
	}

	for _, v in ipairs(visibleColumns) do
		local currCol = {
			Name = localization:getText("Callstack", v),
			Key = columnNameToKey[v],
			Tooltip = localization:getText("Callstack", v .. "Tooltip") or nil,
		}
		table.insert(tableColumns, currCol)
	end

	local widthsToUse = self.state.sizes
	local tableColumnsWithWidths = map(tableColumns, function(column, index: number)
		return join(column, {
			Width = widthsToUse[index],
		})
	end)

	local topBarHeight = Constants.HEADER_HEIGHT + Constants.BUTTON_PADDING * 2

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
	}, {
		HeaderView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, topBarHeight),
			Spacing = Constants.BUTTON_PADDING,
			Padding = Constants.BUTTON_PADDING,
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
				StepIntoButton = Roact.createElement(IconButton, {
					Size = UDim2.new(0, Constants.BUTTON_SIZE, 0, Constants.BUTTON_SIZE),
					LayoutOrder = 1,
					LeftIcon = "rbxasset://textures/Debugger/Step-In.png",
					TooltipText = localization:getText("Common", "stepIntoActionV2"),
					OnClick = self.onStepInto,
					Disabled = self.props.CurrentThreadId == nil,
				}),
				StepOverButton = Roact.createElement(IconButton, {
					Size = UDim2.new(0, Constants.BUTTON_SIZE, 0, Constants.BUTTON_SIZE),
					LayoutOrder = 2,
					LeftIcon = "rbxasset://textures/Debugger/Step-Over.png",
					TooltipText = localization:getText("Common", "stepOverActionV2"),
					OnClick = self.onStepOver,
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
				LayoutOrder = 2,
				Style = "Box",
				Layout = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}, {
				ColumnDropdown = Roact.createElement(CallstackDropdownField, {
					LayoutOrder = 1,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
			}),
		}),
		BodyView = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -topBarHeight),
			LayoutOrder = 2,
			Style = "Box",
		}, {
			TableView = Roact.createElement(TreeTable, {
				Scroll = true,
				Size = UDim2.fromScale(1, 1),
				Columns = tableColumnsWithWidths,
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
				OnColumnSizesChange = self.OnColumnSizesChange,
				UseDeficit = false,
				UseScale = true,
				ClampSize = true,
				Padding = TABLE_PADDING,
				ColumnHeaderHeight = Constants.COLUMN_HEADER_HEIGHT,
				RowHeight = Constants.ROW_HEIGHT,
				ExpandOnDoubleClick = if FFlagDevFrameworkExpandColumnOnDoubleClickDragbar then true else nil,
			}),
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

CallstackComponent = RoactRodux.connect(function(state, props)
	local common = state.Common
	local callstack = state.Callstack
	if common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId] == nil then
		return {
			RootItems = {},
			ExpansionTable = if FFlagOnlyLoadOneCallstack() then {} else nil,
			CurrentThreadId = nil,
			ColumnFilter = callstack.listOfEnabledColumns,
		}
	else
		local currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]
		local currDST = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
		local callstackVars = callstack.stateTokenToCallstackVars[currDST]
		assert(callstackVars)
		local threadList = callstackVars.threadList
		local rootList = {}
		local expansionTable = if FFlagOnlyLoadOneCallstack() then {} else nil
		for _, threadInfo in ipairs(threadList) do
			local rootItem = makeCallstackRootItem(threadInfo, callstackVars, common, state.ScriptInfo)
			if FFlagOnlyLoadOneCallstack() then assert(rootItem ~= nil) end
			if FFlagOnlyLoadOneCallstack() or rootItem then
				table.insert(rootList, rootItem)
				if threadInfo.threadId == currentThreadId then
					if FFlagOnlyLoadOneCallstack() then
						expansionTable[rootItem] = true
					else
						expansionTable = { [rootItem] = true }
					end
				end
			else
				return {
					RootItems = {},
					CurrentThreadId = nil,
					ColumnFilter = callstack.listOfEnabledColumns,
				}
			end
		end
		return {
			RootItems = rootList,
			CurrentThreadId = currentThreadId,
			ExpansionTable = expansionTable,
			ColumnFilter = deepCopy(callstack.listOfEnabledColumns),
			CurrentDebuggerConnectionId = common.currentDebuggerConnectionId,
			CurrentDST = if FFlagOnlyLoadOneCallstack() then common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId] else nil,
		}
	end
end, function(dispatch)
	return {
		setCurrentFrameNumber = function(threadId, frameNumber)
			return dispatch(SetCurrentFrameNumber(threadId, frameNumber))
		end,
		onCurrentFrameChanged = function(currentDebuggerConnectionId, threadId, frameNumber)
			local debuggerUIService = game:GetService("DebuggerUIService")
			local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
			local connection = debuggerConnectionManager:GetConnectionById(currentDebuggerConnectionId)
			return dispatch(LoadAllVariablesForThreadAndFrame(threadId, connection, frameNumber-1, debuggerUIService))
		end,
		onExpansionClicked = function(threadId, topFrame, currentDebuggerConnectionId)
			-- remove with FFlagOnlyLoadOneCallstack
			assert(not FFlagOnlyLoadOneCallstack())
			local debuggerUIService = game:GetService("DebuggerUIService")
			debuggerUIService:OpenScriptAtLine(topFrame.scriptGUID, currentDebuggerConnectionId, topFrame.lineColumn, false)
			debuggerUIService:SetScriptLineMarker(
				topFrame.scriptGUID,
				currentDebuggerConnectionId,
				topFrame.lineColumn,
				true
			)

			local debuggerConnectionManager = game:GetService("DebuggerConnectionManager")
			local connection = debuggerConnectionManager:GetConnectionById(currentDebuggerConnectionId)
			return dispatch(LoadAllVariablesForThreadAndFrame(threadId, connection, 0, debuggerUIService))
		end,
		onPopulateCallstackThreadThunk = function(threadState, connection, currentDST, scriptChangeService, callBack)
			return dispatch(PopulateCallstackThreadThunk(threadState, connection, currentDST, scriptChangeService, callBack))
		end,
		onLoadAllVariablesForThreadAndFrame = function(threadId, connection, frameNumber, debuggerUIService)
			return dispatch(LoadAllVariablesForThreadAndFrame(threadId, connection, frameNumber, debuggerUIService))
		end,
		onColumnFilterChange = function(enabledColumns)
		    return dispatch(ColumnFilterChange(enabledColumns))
		end,
	}
end)(CallstackComponent)

return CallstackComponent
