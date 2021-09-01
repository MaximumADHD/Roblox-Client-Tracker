local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local IconButton = UI.IconButton
local Button = UI.Button
local Pane = UI.Pane
local TreeTable = UI.TreeTable

local BreakpointsTable = Roact.PureComponent:extend("BreakpointsTable")

local BUTTON_SIZE = 40
local BUTTON_PADDING = 5

-- Compares breakpoints based on line number
local breakpointLineNumberComp = function(a, b)
	return a.lineNumber < b.lineNumber
end

function BreakpointsTable:render()
	local props = self.props
	local localization = props.Localization
	local style = self.props.Stylizer

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
				Expansion = {},
				LayoutOrder = 2,
			}),
		})
	})
end

ContextServices.mapToProps(BreakpointsTable, {
	Localization = Localization,
	Stylizer = Stylizer,
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
