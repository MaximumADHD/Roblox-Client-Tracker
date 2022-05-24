local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Framework = require(PluginFolder.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local DropdownField = require(PluginFolder.Src.Components.Common.DropdownField)

local Actions = PluginFolder.Src.Actions
local BreakpointColumnFilter = require(Actions.BreakpointsWindow.BreakpointColumnFilter)

local Models = PluginFolder.Src.Models
local Columns = require(Models.BreakpointTableColumnEnum)

local BreakpointsDropdownField = Roact.PureComponent:extend("BreakpointsDropdownField")

local function hasValue(tab, val)
	for _, v in pairs(tab) do
		if v == val then
			return true
		end
	end
	return false
end

function BreakpointsDropdownField:init()
	self.keyColumns = {
		[1] = "AllColumns",
		[2] = Columns.SourceLine,
		[3] = Columns.Condition,
		[4] = Columns.LogMessage,
		[5] = Columns.ContinueExecution,
	}
end

function BreakpointsDropdownField:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization

	return Roact.createElement(DropdownField, {
		KeyTexts = self.keyColumns,
		ClickCallback = props.onColumnFilterChange,
		KeyStates = props.ColumnStates,
		Localization = localization,
		Style = style,
		Widget = "BreakpointsWindow",
		DropdownWidth = 200,
		HamburgerMenu = true,
		ShouldShowDropdownIcon = false,
	})
end

BreakpointsDropdownField = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(BreakpointsDropdownField)

BreakpointsDropdownField = RoactRodux.connect(function(state, props)
	local enabledColumns = state.Breakpoint.listOfEnabledColumns
	local newColumnStates = {}
	newColumnStates[2] = hasValue(enabledColumns, Columns.SourceLine)
	newColumnStates[3] = hasValue(enabledColumns, Columns.Condition)
	newColumnStates[4] = hasValue(enabledColumns, Columns.LogMessage)
	newColumnStates[5] = hasValue(enabledColumns, Columns.ContinueExecution)
	return {
		ColumnStates = newColumnStates,
	}
end, function(dispatch)
	return {
		onColumnFilterChange = function(enabledColumns)
			return dispatch(BreakpointColumnFilter(enabledColumns))
		end,
	}
end)(BreakpointsDropdownField)

return BreakpointsDropdownField
