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

local BreakpointsTable = Roact.PureComponent:extend("BreakpointsTable")
local FFlagDevFrameworkHighlightTableRows = game:GetFastFlag("DevFrameworkHighlightTableRows")

local UtilFolder = PluginFolder.Src.Util
local MakePluginActions = require(UtilFolder.MakePluginActions)

local Thunks = PluginFolder.Src.Thunks
local DeleteBreakpointThunk = require(Thunks.Breakpoints.DeleteBreakpointThunk)
local ToggleAllBreakpoints = require(Thunks.Breakpoints.ToggleAllBreakpoints)

local BUTTON_SIZE = 40
local BUTTON_PADDING = 5

function BreakpointsTable:init()
	
	self.state = {
		selectedBreakpoint = {},
	}
	
	self.onSelectionChange = function(selection)
		for rowInfo in pairs(selection) do
			self:setState({
				selectedBreakpoint = {rowInfo},
			})
		end
	end
	
	self.onMenuActionSelected = function(actionId, extraParameters)

	end

	self.onRightClick = function(row)
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
		if #self.state.selectedBreakpoint ~= 0 then
			local BreakpointManager = game:GetService("BreakpointManager")
			self.props.onDeleteBreakpointThunk(self.state.selectedBreakpoint[1].id, BreakpointManager)
			
			self:setState({
				selectedBreakpoint = {},
			})
		end
	end
	
	self.deleteAllBreakpoints = function()
		local BreakpointManager = game:GetService("BreakpointManager")
		for _, breakpoint in ipairs(self.props.Breakpoints) do
			self.props.onDeleteBreakpointThunk(breakpoint.id, BreakpointManager)
		end
		self:setState({
			selectedBreakpoint = {},
		})
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

function BreakpointsTable:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer
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
				HighlightedRows = (FFlagDevFrameworkHighlightTableRows and self.state.selectedBreakpoint) or nil,
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
		for breakpointId, breakpoint in pairs(state.Breakpoint.BreakpointInfo) do
			breakpointsArray = Cryo.List.join(breakpointsArray, {breakpoint})
		end
		table.sort(breakpointsArray, breakpointLineNumberComp)
		
		return {
			Breakpoints = breakpointsArray
		}
	end,
	
	function(dispatch)
		return {
			onDeleteBreakpointThunk = function(id, breakpointManager)
				return dispatch(DeleteBreakpointThunk(id, breakpointManager))
			end,

			onToggleEnabledAll = function(breakpointManager)
				return dispatch(ToggleAllBreakpoints(breakpointManager))
			end
		}
	end
)(BreakpointsTable)

return BreakpointsTable
