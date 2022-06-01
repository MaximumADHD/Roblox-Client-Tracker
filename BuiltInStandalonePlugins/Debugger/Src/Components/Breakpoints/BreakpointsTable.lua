local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Framework = require(PluginFolder.Packages.Framework)
local Cryo = require(PluginFolder.Packages.Cryo)

local ContextServices = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Plugin = ContextServices.Plugin
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer
local Dash = Framework.Dash
local map = Dash.map
local join = Dash.join

local Util = Framework.Util
local deepCopy = Util.deepCopy

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane
local TreeTable = UI.TreeTable
local StudioUI = Framework.StudioUI
local showContextMenu = StudioUI.showContextMenu

local BreakpointRow = require(PluginFolder.Src.Models.BreakpointRow)
local Constants = require(PluginFolder.Src.Util.Constants)
local BreakpointsTreeTableCell = require(PluginFolder.Src.Components.Breakpoints.BreakpointsTreeTableCell)

local BreakpointsTable = Roact.PureComponent:extend("BreakpointsTable")
local FFlagDevFrameworkTableColumnResize = game:GetFastFlag("DevFrameworkTableColumnResize")
local FFlagDevFrameworkTableHeaderTooltip = game:GetFastFlag("DevFrameworkTableHeaderTooltip")
local FFlagDevFrameworkCustomTableRowHeight = game:GetFastFlag("DevFrameworkCustomTableRowHeight")
local hasTableColumnResizeFFlags = FFlagDevFrameworkTableColumnResize

local UtilFolder = PluginFolder.Src.Util
local MakePluginActions = require(UtilFolder.MakePluginActions)
local BreakpointHelperFunctions = require(UtilFolder.BreakpointHelperFunctions)
local WatchHelperFunctions = require(UtilFolder.WatchHelperFunctions)
local ColumnResizeHelperFunctions = require(UtilFolder.ColumnResizeHelperFunctions)

local AnalyticsEventNames = require(PluginFolder.Src.Resources.AnalyticsEventNames)

local Thunks = PluginFolder.Src.Thunks
local ToggleAllBreakpoints = require(Thunks.Breakpoints.ToggleAllBreakpoints)

local Actions = PluginFolder.Src.Actions
local SetBreakpointSortState = require(Actions.BreakpointsWindow.SetBreakpointSortState)

local BreakpointsDropdownField = require(script.Parent.BreakpointsDropdownField)

local defaultColumnKeys = {
	[1] = "isEnabled",
	[2] = "scriptName",
	[3] = "lineNumber",
}

local dropdownColumnNameToKey = {
	SourceLineColumn = "scriptLine",
	ConditionColumn = "condition",
	LogMessageColumn = "logMessage",
	ContinueExecutionColumn = "continueExecution",
}

local function fetchContextIcon(context)
	if context == Constants.GameStateTypes.Client then
		return Constants.DebugpointIconTable.client
	elseif context == Constants.GameStateTypes.Server then
		return Constants.DebugpointIconTable.server
	end
	return nil
end

function BreakpointsTable:init()
	local initialSizes = {}
	if hasTableColumnResizeFFlags then
		local numColumns = #defaultColumnKeys + #self.props.ColumnFilter
		for i = 1, numColumns do
			-- have the script name column be double the size as the others.
			if i == 2 then
				table.insert(initialSizes, UDim.new(2 / (numColumns + 1), 0))
			else
				table.insert(initialSizes, UDim.new(1 / (numColumns + 1), 0))
			end
		end
	end

	self.state = {
		selectedBreakpoints = {},
		breakpointIdToExpansionState = {},
		sizes = initialSizes,
	}

	self.OnDoubleClick = function(row)
		self.goToScript()
	end

	self.OnColumnSizesChange = function(newSizes: { UDim })
		if hasTableColumnResizeFFlags then
			self:setState(function(state)
				return {
					sizes = newSizes,
				}
			end)
		end
	end

	self.onSelectionChange = function(selection)
		local selectedBps = {}
		for rowInfo in pairs(selection) do
			table.insert(selectedBps, rowInfo)
		end

		self:setState(function(state)
			return {
				selectedBreakpoints = selectedBps,
			}
		end)
	end

	self.onMenuActionSelected = function(actionId, extraParameters)
		local row = extraParameters.row

		if
			actionId == Constants.BreakpointActions.DeleteBreakpoint
			or actionId == Constants.LogpointActions.DeleteLogpoint
		then
			local BreakpointManager = game:GetService("BreakpointManager")
			BreakpointManager:RemoveBreakpointById(row.item.id)

			self.props.Analytics:report(AnalyticsEventNames.RemoveMetaBreakpoint, "LuaBreakpointsTable.ContextMenu")
		elseif
			actionId == Constants.BreakpointActions.EditBreakpoint
			or actionId == Constants.LogpointActions.EditLogpoint
		then
			local DebuggerUIService = game:GetService("DebuggerUIService")
			DebuggerUIService:EditBreakpoint(row.item.id)
		elseif
			actionId == Constants.BreakpointActions.EnableBreakpoint
			or actionId == Constants.LogpointActions.EnableLogpoint
			or actionId == Constants.BreakpointActions.DisableBreakpoint
			or actionId == Constants.LogpointActions.DisableLogpoint
		then
			local bpManager = game:GetService("BreakpointManager")
			local bp = bpManager:GetBreakpointById(row.item.id)
			BreakpointHelperFunctions.setBreakpointRowEnabled(
				bp,
				row,
				self.props.Analytics,
				"LuaBreakpointsTable.ContextMenu"
			)
		elseif actionId == Constants.CommonActions.GoToScript then
			self.goToScript()
		end
	end

	self.OnSortChange = function(index, sortOrder)
		local props = self.props
		local defaultSortOrder = props.SortOrder or sortOrder
		props.onSetBreakpointSortState((props.SortIndex == index) and sortOrder or defaultSortOrder, index)
	end
	self.onRightClick = function(row)
		self:setState(function(state)
			return {
				selectedBreakpoints = { row.item },
			}
		end)

		local props = self.props
		local localization = props.Localization
		local plugin = props.Plugin:get()

		local isLogpoint = row.item.debugpointType == Constants.DebugpointType.Logpoint
		local actions = MakePluginActions.getBreakpointActions(localization, row.item.isEnabled, isLogpoint)
		local actionsOrder = MakePluginActions.getBreakpointActionsOrder(row.item.isEnabled, isLogpoint)
		showContextMenu(plugin, "Breakpoint", actions, self.onMenuActionSelected, { row = row }, actionsOrder)
	end

	self.deleteAllBreakpoints = function()
		local BreakpointManager = game:GetService("BreakpointManager")
		for _, breakpoint in ipairs(self.props.Breakpoints) do
			BreakpointManager:RemoveBreakpointById(breakpoint.id)
		end

		self.props.Analytics:report(AnalyticsEventNames.RemoveAllMetaBreakpoints, "LuaBreakpointsTable")
	end

	self.toggleEnabledAll = function()
		local BreakpointManager = game:GetService("BreakpointManager")
		local enable = self.props.hasDisabledBreakpoints

		self.props.onToggleEnabledAll(BreakpointManager, enable)

		if enable then
			self.props.Analytics:report(AnalyticsEventNames.EnableAllMetaBreakpoints, "LuaBreakpointsTable")
		else
			self.props.Analytics:report(AnalyticsEventNames.DisableAllMetaBreakpoints, "LuaBreakpointsTable")
		end
	end

	self.goToScript = function()
		if #self.state.selectedBreakpoints ~= 0 then
			local currBreakpoint = self.state.selectedBreakpoints[1]
			local DebuggerUIService = game:GetService("DebuggerUIService")
			local connectionId = if currBreakpoint.hiddenConnectionId
				then currBreakpoint.hiddenConnectionId
				else self.props.CurrentDebuggerConnectionId
			local lineNumber = if currBreakpoint.hiddenLineNumber
				then currBreakpoint.hiddenLineNumber
				else currBreakpoint.lineNumber
			DebuggerUIService:OpenScriptAtLine(currBreakpoint.scriptGUID, connectionId, lineNumber, true)
		end
	end

	self.onExpansionChange = function(newExpansion)
		self:setState(function(state)
			local newExpansionMap = {}
			for row, expandedBool in pairs(newExpansion) do
				newExpansionMap[row.id] = expandedBool
			end
			return {
				breakpointIdToExpansionState = Cryo.Dictionary.join(
					state.breakpointIdToExpansionState,
					newExpansionMap
				),
			}
		end)
	end

	self.getTreeChildren = function(item)
		return item.children or {}
	end

	self.OnFocusLost = function(enterPress, inputObj, row, col)
		local breakpointManager = game:GetService("BreakpointManager")
		local bpModified = row.item
		local bpId = bpModified.id
		local metaBP = breakpointManager:GetBreakpointById(bpId)

		if self.props.CurrentKeys[col] == "condition" then
			local newCondition = inputObj.Text

			if newCondition ~= metaBP.Condition then
				metaBP.Condition = newCondition
				self.props.Analytics:report(AnalyticsEventNames.MetaBreakpointConditionChanged, "LuaBreakpointsTable")
			end
		elseif self.props.CurrentKeys[col] == "logMessage" then
			local newLogMessage = inputObj.Text

			if newLogMessage ~= metaBP.LogMessage then
				metaBP.LogMessage = newLogMessage
				self.props.Analytics:report(AnalyticsEventNames.MetaBreakpointLogMessageChanged, "LuaBreakpointsTable")
			end
		end
	end
end

function BreakpointsTable:didMount()
	if self.props.IsPaused and self.props.CurrentBreakpoint then
		self:setState(function(state)
			return {
				selectedBreakpoints = { self.props.CurrentBreakpoint },
			}
		end)
	end
end

function BreakpointsTable:didUpdate(prevProps)
	local props = self.props
	if #props.ColumnFilter ~= #prevProps.ColumnFilter then
		-- add the 3 default columns
		local columnNumber = #props.ColumnFilter + #defaultColumnKeys
		local updatedSizes = {}

		-- columns have been resized so we need to scale the existing columns proportionally as we add/delete new columns
		local oldColumnNumber = #prevProps.ColumnFilter + #defaultColumnKeys
		local newColumnSet = Cryo.List.toSet(props.ColumnFilter)
		local oldColumnNameToSize = ColumnResizeHelperFunctions.fetchOldColumnSizes(
			oldColumnNumber,
			prevProps.ColumnFilter,
			defaultColumnKeys,
			self.state.sizes
		)

		if columnNumber < oldColumnNumber then
			--removing column(s)
			local deletedColumnsSize = ColumnResizeHelperFunctions.fetchDeletedColumnsSize(
				#defaultColumnKeys,
				oldColumnNumber,
				prevProps.ColumnFilter,
				oldColumnNameToSize,
				newColumnSet
			)
			updatedSizes = ColumnResizeHelperFunctions.updatedSizesAfterRemovingColumns(
				columnNumber,
				deletedColumnsSize,
				oldColumnNameToSize,
				defaultColumnKeys,
				props.ColumnFilter
			)
		else
			--adding column(s)
			updatedSizes = ColumnResizeHelperFunctions.updatedSizesAfterAddingColumns(
				columnNumber,
				oldColumnNumber,
				oldColumnNameToSize,
				props.ColumnFilter,
				defaultColumnKeys
			)
		end

		self:setState(function(state)
			return {
				sizes = updatedSizes,
			}
		end)
	end

	if self.props.IsPaused ~= prevProps.IsPaused then
		if self.props.IsPaused and self.props.CurrentBreakpoint then
			self:setState(function(state)
				return {
					selectedBreakpoints = { self.props.CurrentBreakpoint },
				}
			end)
			-- Just hit a breakpoint so self.props.CurrentBreakpoint is the selectedBp and we don't need to check if the
			-- Breakpoints prop is modified to update the selectedBreakpoint
			return
		end
	end

	if self.props.Breakpoints ~= prevProps.Breakpoints then
		if #self.state.selectedBreakpoints ~= 0 then
			local updatedSelections = {}
			local selectedMetaBreakpointIds = {}
			local selectedChildBreakpoints = {}

			for _, currentBreakpoint in ipairs(self.state.selectedBreakpoints) do
				if currentBreakpoint.context then
					-- currently selected breakpoint is a child breakpoint
					selectedChildBreakpoints[currentBreakpoint.id] = currentBreakpoint.context
						.. currentBreakpoint.scriptGUID
				else
					-- currently selected breakpoint is a metabreakpoint
					selectedMetaBreakpointIds[currentBreakpoint.id] = true
				end
			end

			for _, metaBreakpoint in ipairs(self.props.Breakpoints) do
				if selectedMetaBreakpointIds[metaBreakpoint.id] then
					table.insert(updatedSelections, metaBreakpoint)
				end

				if selectedChildBreakpoints[metaBreakpoint.id] then
					--find the child breakpoint that was previously the selected breakpoint if it still exists.
					for _, breakpoint in ipairs(metaBreakpoint.children) do
						local childBreakpointInfo = breakpoint.context .. breakpoint.scriptGUID
						if selectedChildBreakpoints[metaBreakpoint.id] == childBreakpointInfo then
							table.insert(updatedSelections, breakpoint)
						end
					end
				end
			end
			self:setState(function(state)
				return {
					selectedBreakpoints = updatedSelections,
				}
			end)
		end
	end
end

function BreakpointsTable:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer
	local shouldFocusBreakpoint = props.IsPaused
		and props.CurrentBreakpoint
		and self.state.selectedBreakpoints[1]
		and props.CurrentBreakpoint.id == self.state.selectedBreakpoints[1].id

	local tableColumns = {
		{
			Name = "",
			Key = defaultColumnKeys[1],
		},
		{
			Name = localization:getText("BreakpointsWindow", "ScriptColumn"),
			Key = defaultColumnKeys[2],
			Tooltip = FFlagDevFrameworkTableHeaderTooltip and localization:getText(
				"BreakpointsWindow",
				"ScriptColumnTooltip"
			) or nil,
		},
		{
			Name = localization:getText("BreakpointsWindow", "LineColumn"),
			Key = defaultColumnKeys[3],
			Tooltip = FFlagDevFrameworkTableHeaderTooltip and localization:getText(
				"BreakpointsWindow",
				"LineColumnTooltip"
			) or nil,
		},
	}

	for _, v in pairs(props.ColumnFilter) do
		local currCol = {
			Name = localization:getText("BreakpointsWindow", v),
			Key = dropdownColumnNameToKey[v],
			Tooltip = FFlagDevFrameworkTableHeaderTooltip and localization:getText("BreakpointsWindow", v .. "Tooltip")
				or nil,
		}
		table.insert(tableColumns, currCol)
	end

	if hasTableColumnResizeFFlags then
		tableColumns = map(tableColumns, function(column, index: number)
			return join(column, {
				Width = self.state.sizes[index],
			})
		end)
	end

	local expansionTable = {}
	for _, bp in pairs(props.Breakpoints) do
		if self.state.breakpointIdToExpansionState[bp.id] == nil then
			self.state.breakpointIdToExpansionState[bp.id] = false
		end
		expansionTable[bp] = self.state.breakpointIdToExpansionState[bp.id]
	end

	local toggleButtonText
	if props.hasDisabledBreakpoints then
		toggleButtonText = localization:getText("BreakpointsWindow", "EnableAll")
	else
		toggleButtonText = localization:getText("BreakpointsWindow", "DisableAll")
	end

	local topBarHeight = Constants.HEADER_HEIGHT + Constants.BUTTON_PADDING * 2

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		BackgroundColor3 = style.MainBackground,
	}, {
		HeaderPane = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 0, topBarHeight),
			Spacing = Constants.BUTTON_PADDING,
			Padding = Constants.BUTTON_PADDING,
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 1,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			ButtonsContainer = Roact.createElement(Pane, {
				Size = UDim2.new(0.5, 0, 0, Constants.HEADER_HEIGHT),
				LayoutOrder = 1,
				Style = "Box",
				Layout = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}, {
				DisableAllBreakpointButton = Roact.createElement(IconButton, {
					Size = UDim2.new(0, Constants.BUTTON_SIZE, 0, Constants.BUTTON_SIZE),
					LayoutOrder = 1,
					LeftIcon = "rbxasset://textures/Debugger/Breakpoints/disable_all@2x.png",
					TooltipText = toggleButtonText,
					OnClick = self.toggleEnabledAll,
				}),
				DeleteAllBreakpointButton = Roact.createElement(IconButton, {
					Size = UDim2.new(0, Constants.BUTTON_SIZE, 0, Constants.BUTTON_SIZE),
					LayoutOrder = 2,
					LeftIcon = "rbxasset://textures/Debugger/Breakpoints/delete_all@2x.png",
					TooltipText = localization:getText("BreakpointsWindow", "DeleteAll"),
					OnClick = self.deleteAllBreakpoints,
				}),
			}),
			DropdownContainer = Roact.createElement(Pane, {
				Size = UDim2.new(0.5, 0, 0, Constants.HEADER_HEIGHT),
				LayoutOrder = 2,
				Style = "Box",
				Layout = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
			}, {
				ColumnDropdown = Roact.createElement(BreakpointsDropdownField, {
					LayoutOrder = 1,
					AutomaticSize = Enum.AutomaticSize.X,
				}),
			}),
		}),
		TablePane = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -topBarHeight),
			Style = "Box",
			LayoutOrder = 2,
		}, {
			BreakpointsTable = Roact.createElement(TreeTable, {
				Size = UDim2.new(1, 0, 1, 0),
				Columns = tableColumns,
				RootItems = props.Breakpoints or {},
				OnExpansionChange = self.onExpansionChange,
				RightClick = self.onRightClick,
				CellComponent = BreakpointsTreeTableCell,
				LayoutOrder = 2,
				OnSelectionChange = self.onSelectionChange,
				HighlightedRows = self.state.selectedBreakpoints,
				Scroll = true,
				ScrollFocusIndex = shouldFocusBreakpoint and self.props.CurrentBreakpointIndex,
				Expansion = expansionTable,
				GetChildren = self.getTreeChildren,
				TextInputCols = props.TextInputCols,
				OnFocusLost = self.OnFocusLost,
				OnDoubleClick = self.OnDoubleClick,
				SortIndex = props.SortIndex,
				SortOrder = props.SortOrder,
				OnSortChange = self.OnSortChange,
				OnColumnSizesChange = if hasTableColumnResizeFFlags then self.OnColumnSizesChange else nil,
				UseDeficit = if hasTableColumnResizeFFlags then false else nil,
				UseScale = if hasTableColumnResizeFFlags then true else nil,
				ClampSize = if hasTableColumnResizeFFlags then true else nil,
				ColumnHeaderHeight = if FFlagDevFrameworkCustomTableRowHeight
					then Constants.COLUMN_HEADER_HEIGHT
					else nil,
				RowHeight = if FFlagDevFrameworkCustomTableRowHeight then Constants.ROW_HEIGHT else nil,
			}),
		}),
	})
end

BreakpointsTable = ContextServices.withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
	Plugin = Plugin,
})(BreakpointsTable)

BreakpointsTable = RoactRodux.connect(function(state, props)
	local breakpointsArray = {}
	local currentBreakpoint = nil
	local currentBreakpointIndex = nil
	local hasDisabledBreakpoints = false
	for breakpointId, breakpoint in pairs(state.Breakpoint.MetaBreakpoints) do
		local bpCopy = deepCopy(breakpoint)
		bpCopy.scriptGUID = breakpoint.scriptName
		bpCopy.scriptName = state.ScriptInfo.ScriptInfo[bpCopy.scriptName]
		bpCopy.scriptLine = state.ScriptInfo.ScriptLineContents[bpCopy.scriptGUID]
			and state.ScriptInfo.ScriptLineContents[bpCopy.scriptGUID][bpCopy.lineNumber]
		table.insert(breakpointsArray, bpCopy)
		if breakpoint.isEnabled == false then
			hasDisabledBreakpoints = true
		end
	end

	local i = 1
	for _, breakpoint in ipairs(breakpointsArray) do
		if breakpoint.id == state.Common.currentBreakpointId then
			currentBreakpoint = breakpoint
			currentBreakpointIndex = i
		end
		i = i + 1
		breakpoint.children = {}

		for context, connectionIdAndBreakpoints in pairs(breakpoint.contextBreakpoints) do
			for _, individualBreakpoint in ipairs(connectionIdAndBreakpoints.breakpoints) do
				local bpRow = BreakpointRow.extractNonChildData(breakpoint, context, individualBreakpoint.Script)
				bpRow.hiddenConnectionId = connectionIdAndBreakpoints.connectionId
				bpRow.hiddenLineNumber = bpRow.lineNumber
				bpRow.lineNumber = ""
				bpRow.isEnabled = individualBreakpoint.Enabled
				bpRow.scriptName = {
					Value = state.ScriptInfo.ScriptInfo[individualBreakpoint.Script],
					LeftIcon = {
						Image = fetchContextIcon(context),
						Size = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE),
					},
				}
				table.insert(breakpoint.children, bpRow)
			end
		end
	end

	local currKeys = {}
	local textInputCols = {}
	for _, v in ipairs(defaultColumnKeys) do
		table.insert(currKeys, v)
	end
	for index, v in ipairs(state.Breakpoint.listOfEnabledColumns) do
		table.insert(currKeys, dropdownColumnNameToKey[v])
		if v == "ConditionColumn" or v == "LogMessageColumn" then
			local colIndex = index + #defaultColumnKeys
			textInputCols[colIndex] = true
		end
	end
	WatchHelperFunctions.sortTableByColumnAndOrder(
		breakpointsArray,
		state.Breakpoint.ColumnIndex,
		state.Breakpoint.SortDirection,
		currKeys,
		false,
		{"scriptGUID", "lineNumber"}
	)

	return {
		Breakpoints = breakpointsArray,
		IsPaused = state.Common.isPaused,
		CurrentBreakpoint = currentBreakpoint,
		CurrentBreakpointIndex = currentBreakpointIndex,
		CurrentDebuggerConnectionId = state.Common.currentDebuggerConnectionId,
		SortIndex = state.Breakpoint.ColumnIndex,
		SortOrder = state.Breakpoint.SortDirection,
		hasDisabledBreakpoints = hasDisabledBreakpoints,
		ColumnFilter = state.Breakpoint.listOfEnabledColumns,
		TextInputCols = textInputCols,
		CurrentKeys = currKeys,
	}
end, function(dispatch)
	return {
		onToggleEnabledAll = function(breakpointManager, stateToSet)
			return dispatch(ToggleAllBreakpoints(breakpointManager, stateToSet))
		end,
		onSetBreakpointSortState = function(sortDirection, columnIndex)
			return dispatch(SetBreakpointSortState(sortDirection, columnIndex))
		end,
	}
end)(BreakpointsTable)

return BreakpointsTable
