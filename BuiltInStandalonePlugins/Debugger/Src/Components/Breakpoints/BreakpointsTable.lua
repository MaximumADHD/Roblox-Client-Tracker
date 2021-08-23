local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local IconButton = UI.IconButton
local Button = UI.Button
local Pane = UI.Pane
local Table = UI.Table

local BreakpointsTable = Roact.PureComponent:extend("BreakpointsTable")

local BUTTON_SIZE = 40
local BUTTON_PADDING = 5

function BreakpointsTable:render()
	local props = self.props
	local localization = props.Localization
	local style = self.props.Stylizer

	local tableColumns = {
		{
			Name = localization:getText("BreakpointsWindow", "EnabledColumn"),
			Key = "enabledColumn",
		}, {
			Name = localization:getText("BreakpointsWindow", "LineColumn"),
			Key = "lineColumn",
		}, {
			Name = localization:getText("BreakpointsWindow", "ScriptColumn"),
			Key = "scriptColumn",
		}, {
			Name = localization:getText("BreakpointsWindow", "SourceLineColumn"),
			Key = "sourceLineColumn",
		}, {
			Name = localization:getText("BreakpointsWindow", "ConditionColumn"),
			Key = "conditionColumn",
		}, {
			Name = localization:getText("BreakpointsWindow", "LogMessageColumn"),
			Key = "logMessageColumn",
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
			Table = Roact.createElement(Table, {
				Size = UDim2.new(1, 0, 1, 0),
				Columns = tableColumns,
				Rows = {},
				LayoutOrder = 2,
			}),
		})
	})
end

ContextServices.mapToProps(BreakpointsTable, {
	Localization = Localization,
	Stylizer = Stylizer,
})

return BreakpointsTable
