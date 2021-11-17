local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Cryo = require(PluginFolder.Packages.Cryo)
local Framework = require(PluginFolder.Packages.Framework)

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Localization = ContextServices.Localization
local BreakpointModel = require(PluginFolder.Src.Models.Breakpoint)

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane
local TreeTable = UI.TreeTable
local StudioUI = Framework.StudioUI
local showContextMenu = StudioUI.showContextMenu

local BreakpointsTreeTableCell = require(PluginFolder.Src.Components.Breakpoints.BreakpointsTreeTableCell)

local Constants = require(PluginFolder.Src.Util.Constants)

local BreakpointsTable = Roact.PureComponent:extend("BreakpointsTable")
local FFlagDevFrameworkHighlightTableRows = game:GetFastFlag("DevFrameworkHighlightTableRows")
local FFlagDevFrameworkInfiniteScrollerIndex = game:GetFastFlag("DevFrameworkInfiniteScrollerIndex")

local UtilFolder = PluginFolder.Src.Util
local MakePluginActions = require(UtilFolder.MakePluginActions)

local Thunks = PluginFolder.Src.Thunks
local ToggleAllBreakpoints = require(Thunks.Breakpoints.ToggleAllBreakpoints)

local BUTTON_SIZE = 40
local BUTTON_PADDING = 5

function BreakpointsTable:init()
	
	self.state = {
		selectedBreakpoints = {},
	}
	
	self.onSelectionChange = function(selection)
		for rowInfo in pairs(selection) do
			self:setState({
				selectedBreakpoints = {rowInfo},
			})
		end
	end
	
	self.onMenuActionSelected = function(actionId, extraParameters)
		local row = extraParameters.row
		
		if actionId == Constants.BreakpointActions.DeleteBreakpoint or actionId == Constants.LogpointActions.DeleteLogpoint then
			local BreakpointManager = game:GetService("BreakpointManager")
			BreakpointManager:RemoveBreakpointById(row.item.id)
			
		elseif actionId == Constants.BreakpointActions.EditBreakpoint or actionId == Constants.LogpointActions.EditLogpoint then
			local DebuggerUIService = game:GetService("DebuggerUIService")
			DebuggerUIService:EditBreakpoint(row.item.id)
			--TODO: RIDE-6048 will hook up EditBreakpointDialog with DebuggerV2, and we should make an appropriate thunk/action in listener after.
			
		elseif actionId == Constants.BreakpointActions.EnableBreakpoint or actionId == Constants.LogpointActions.EnableLogpoint or 
			actionId == Constants.BreakpointActions.DisableBreakpoint or actionId == Constants.LogpointActions.DisableLogpoint then
			local bpManager = game:GetService("BreakpointManager")
			local bp = bpManager:GetBreakpointById(row.item.id)
			bp:SetEnabled(not row.item.isEnabled)		
		end
	end

	self.onRightClick = function(row)
		self:setState({
			selectedBreakpoints = {row.item},
		})
		
		local props = self.props
		local localization = props.Localization
		local plugin = props.Plugin:get()

		if row.item.debugpointType == BreakpointModel.debugpointType.Breakpoint then
			local actions = MakePluginActions.getBreakpointActions(localization, row.item.isEnabled)
			showContextMenu(plugin, "Breakpoint", actions, self.onMenuActionSelected, {row = row})
		elseif row.item.debugpointType == BreakpointModel.debugpointType.Logpoint then
			local actions = MakePluginActions.getLogpointActions(localization, row.item.isEnabled)
			showContextMenu(plugin, "Logpoint", actions, self.onMenuActionSelected, {row = row})
		end
	end
	
	self.deleteBreakpoint = function()
		if #self.state.selectedBreakpoints ~= 0 then
			local BreakpointManager = game:GetService("BreakpointManager")
			BreakpointManager:RemoveBreakpointById(self.state.selectedBreakpoints[1].id)
		end
	end
	
	self.deleteAllBreakpoints = function()
		local BreakpointManager = game:GetService("BreakpointManager")
		for _, breakpoint in ipairs(self.props.Breakpoints) do
			BreakpointManager:RemoveBreakpointById(breakpoint.id)
		end
	end

	self.toggleEnabledAll = function()
		local BreakpointManager = game:GetService("BreakpointManager")
		self.props.onToggleEnabledAll(BreakpointManager)
	end
end

-- Compares breakpoints based on line number
local breakpointLineNumberComp = function(a, b)
	return a.lineNumber < b.lineNumber
end

function BreakpointsTable:didMount()
	if self.props.IsPaused and self.props.CurrentBreakpoint then
		self:setState({
			selectedBreakpoints = {self.props.CurrentBreakpoint},
		})	
	end
end

function BreakpointsTable:didUpdate(prevProps)
	if self.props.IsPaused ~= prevProps.IsPaused then
		if self.props.IsPaused and self.props.CurrentBreakpoint then
			self:setState({
				selectedBreakpoints = {self.props.CurrentBreakpoint},
			})	
		end
	end
	
	if self.props.Breakpoints ~= prevProps.Breakpoints then
		if #self.state.selectedBreakpoints ~= 0 then
			local updatedSelections = {}
			local selectedBreakpointIds = {}
			
			for _, currentBreakpoint in ipairs(self.state.selectedBreakpoints) do
				selectedBreakpointIds[currentBreakpoint.id] = true
			end
			
			for _, breakpoint in ipairs(self.props.Breakpoints) do
				if selectedBreakpointIds[breakpoint.id] then
					table.insert(updatedSelections, breakpoint)
				end
			end
			self:setState({
				selectedBreakpoints = updatedSelections,
			})	
		end
	end
end

function BreakpointsTable:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer
	local shouldFocusBreakpoint = props.IsPaused and props.CurrentBreakpoint and self.state.selectedBreakpoints[1] and
		props.CurrentBreakpoint.id == self.state.selectedBreakpoints[1].id
	local tableColumns = {
		{
			Name = localization:getText("BreakpointsWindow", "EnabledColumn"),
			Key = "isEnabled",
		}, {
			Name = localization:getText("BreakpointsWindow", "LineColumn"),
			Key = "lineNumber",
		}, {
			Name = localization:getText("BreakpointsWindow", "ScriptColumn"),
			Key = "scriptName",
		}, {
			Name = localization:getText("BreakpointsWindow", "SourceLineColumn"),
			Key = "scriptLine",
		}, {
			Name = localization:getText("BreakpointsWindow", "ConditionColumn"),
			Key = "condition",
		}, {
			Name = localization:getText("BreakpointsWindow", "LogMessageColumn"),
			Key = "logMessage",
		}, {
			Name = localization:getText("BreakpointsWindow", "ContinueExecutionColumn"),
			Key = "continueExecution",
		}
	}
	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
		Style = "Box",
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		BackgroundColor3 = style.MainBackground,
	}, {
		ButtonsPane = Roact.createElement(Pane, {
			Size = UDim2.new(1,0,0,BUTTON_SIZE+BUTTON_PADDING*2),
			Spacing = BUTTON_PADDING,
			Padding = BUTTON_PADDING,
			Style = "Box",
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = 1,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		},{
			GoToScriptButton = Roact.createElement(IconButton, {
				Size = UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),
				LayoutOrder = 1,
				LeftIcon = "rbxasset://textures/Debugger/Breakpoints/go_to_script@2x.png",
				OnClick = function() end,
			}),
			DisableAllBreakpointButton = Roact.createElement(IconButton, {
				Size = UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),
				LayoutOrder = 2,
				LeftIcon = "rbxasset://textures/Debugger/Breakpoints/disable_all@2x.png",
				OnClick = self.toggleEnabledAll,
			}),
			DeleteBreakpointButton = Roact.createElement(IconButton, {
				Size = UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),
				LayoutOrder = 3,
				LeftIcon = "rbxasset://textures/Debugger/Breakpoints/delete@2x.png",
				OnClick = self.deleteBreakpoint,
			}),
			DeleteAllBreakpointButton = Roact.createElement(IconButton, {
				Size = UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),
				LayoutOrder = 4,
				LeftIcon = "rbxasset://textures/Debugger/Breakpoints/delete_all@2x.png",
				OnClick = self.deleteAllBreakpoints,
			}),
		}),
		TablePane = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, -BUTTON_SIZE),
			Style = "Box",
			LayoutOrder = 2,
		},{
			BreakpointsTable = Roact.createElement(TreeTable, {
				Size = UDim2.new(1, 0, 1, 0),
				Columns = tableColumns,
				RootItems = props.Breakpoints or {},
				RightClick = self.onRightClick,
				Expansion = {},
				CellComponent = BreakpointsTreeTableCell,
				LayoutOrder = 2,
				OnSelectionChange = self.onSelectionChange,
				HighlightedRows = (FFlagDevFrameworkHighlightTableRows and self.state.selectedBreakpoints) or nil,
				Scroll = true,
				ScrollFocusIndex = (FFlagDevFrameworkInfiniteScrollerIndex and shouldFocusBreakpoint and self.props.CurrentBreakpointIndex) or nil,
			}),
		})
	})
end

BreakpointsTable = ContextServices.withContext({
	Localization = Localization,
	Stylizer = Stylizer,
	Plugin = Plugin
})(BreakpointsTable)

BreakpointsTable = RoactRodux.connect(
	function(state, props)
		local breakpointsArray = {}
		local currentBreakpoint = nil
		local currentBreakpointIndex = nil
		local i = 1
		for breakpointId, breakpoint in ipairs(state.Breakpoint.BreakpointInfo) do
			breakpointsArray = Cryo.List.join(breakpointsArray, {breakpoint})
			if breakpointId == state.Common.currentBreakpointId then
				currentBreakpoint = breakpoint
				currentBreakpointIndex = i
			end
			i = i + 1
		end
		table.sort(breakpointsArray, breakpointLineNumberComp)

		return {
			Breakpoints = breakpointsArray,
			IsPaused = state.Common.isPaused,
			CurrentBreakpoint = currentBreakpoint,
			CurrentBreakpointIndex = currentBreakpointIndex
		}
	end,
	
	function(dispatch)
		return {
			onToggleEnabledAll = function(breakpointManager)
				return dispatch(ToggleAllBreakpoints(breakpointManager))
			end,
		}
	end
)(BreakpointsTable)

return BreakpointsTable
