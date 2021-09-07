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
local Button = UI.Button
local Pane = UI.Pane
local TreeTable = UI.TreeTable

local BreakpointsTable = Roact.PureComponent:extend("BreakpointsTable")
local FFlagDevFrameworkAddRightClickEventToPane = game:GetFastFlag("DevFrameworkAddRightClickEventToPane")

local BUTTON_SIZE = 40
local BUTTON_PADDING = 5

function BreakpointsTable:init()		
	if FFlagDevFrameworkAddRightClickEventToPane then
		self.onRightClick = function(row)
			local props = self.props
			local localization = props.Localization
			local plugin = props.Plugin:get()
			
			if self.debugpointMenu then
				return
			end
			
			self.debugpointMenu = plugin:CreatePluginMenu("DebugpointsContextMenu")

			if row.item.debugpointType == BreakpointModel.debugpointType.Breakpoint then
				self.debugpointMenu:AddNewAction("EditBreakpoint", 
					localization:getText("BreakpointsWindow", "EditBreakpoint")).Triggered:connect(function() end)
				
				if row.item.isEnabled then
					self.debugpointMenu:AddNewAction("DisableBreakpoint", 
						localization:getText("BreakpointsWindow", "DisableBreakpoint")).Triggered:connect(function() end)
				else
					self.debugpointMenu:AddNewAction("EnableBreakpoint", 
						localization:getText("BreakpointsWindow", "EnableBreakpoint")).Triggered:connect(function() end)
				end
				
				self.debugpointMenu:AddNewAction("DeleteBreakpoint", 
					localization:getText("BreakpointsWindow", "DeleteBreakpoint")).Triggered:connect(function() end)
			elseif row.item.debugpointType == BreakpointModel.debugpointType.Logpoint then
				self.debugpointMenu:AddNewAction("EditLogpoint", 
					localization:getText("BreakpointsWindow", "EditLogpoint")).Triggered:connect(function() end)
				
				if row.item.isEnabled then
					self.debugpointMenu:AddNewAction("DisableLogpoint", 
						localization:getText("BreakpointsWindow", "DisableLogpoint")).Triggered:connect(function() end)
				else
					self.debugpointMenu:AddNewAction("EnableLogpoint", 
						localization:getText("BreakpointsWindow", "EnableLogpoint")).Triggered:connect(function() end)
				end

				self.debugpointMenu:AddNewAction("DeleteLogpoint", 
					localization:getText("BreakpointsWindow", "DeleteLogpoint")).Triggered:connect(function() end)
			end

			self.debugpointMenu:ShowAsync()
			
			if self.debugpointMenu then
				self.debugpointMenu:Destroy()
				self.debugpointMenu = nil
			end
		end
	end
end

function BreakpointsTable:willUnmount()
	if self.debugpointMenu then
		self.debugpointMenu:Destroy()
		self.debugpointMenu = nil
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
			ButtonPlaceholderB = Roact.createElement(Button, {
				Text = "B",
				TextSize = style.TextSize,
				Size = UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),
				Style = "Round",
				LayoutOrder = 2,
				OnClick = function() end,
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
				RightClick = FFlagDevFrameworkAddRightClickEventToPane and self.onRightClick,
				Expansion = {},
				LayoutOrder = 2,
			}),
		})
	})
end

ContextServices.mapToProps(BreakpointsTable, {
	Localization = Localization,
	Stylizer = Stylizer,
	Plugin = Plugin
})

BreakpointsTable = RoactRodux.connect(
	function(state, props)
		local breakpointsArray = {}
		for connectionId, breakpoints in pairs(state.Breakpoint) do
			for _, breakpoint in pairs(breakpoints) do
				breakpointsArray = Cryo.List.join({breakpoint}, breakpointsArray)
			end
		end
		table.sort(breakpointsArray, breakpointLineNumberComp)
		
		return {
			Breakpoints = breakpointsArray
		}
	end
)(BreakpointsTable)

return BreakpointsTable
