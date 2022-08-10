local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Framework = require(PluginFolder.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Analytics = ContextServices.Analytics
local AnalyticsEventNames = require(PluginFolder.Src.Resources.AnalyticsEventNames)

local Stylizer = Framework.Style.Stylizer

local DropdownField = require(PluginFolder.Src.Components.Common.DropdownField)

local Thunks = PluginFolder.Src.Thunks
local FilterScopeWatchThunk = require(Thunks.Watch.FilterScopeWatchThunk)

local flatListToString = require(PluginFolder.Src.Util.flatListToString)

local ScopeDropdownField = Roact.PureComponent:extend("ScopeDropdownField")

-- Constants
local VariableScope = {
	LocalScope = "Local",
	UpvalueScope = "Upvalue",
	GlobalScope = "Global",
}
local DROPDOWN_WIDTH = 100
local ALLSCOPE_KEY = "AllScopes"

local function hasValue(tab, val)
	for _, v in pairs(tab) do
		if v == val then
			return true
		end
	end
	return false
end

function ScopeDropdownField:init()
	self.keyColumns = {
		[1] = ALLSCOPE_KEY,
		[2] = VariableScope.LocalScope,
		[3] = VariableScope.UpvalueScope,
		[4] = VariableScope.GlobalScope,
	}

	self.clickCallback = function(enabledScopes)
		self.props.onScopeFilterChange(enabledScopes)
		self.props.Analytics:report(AnalyticsEventNames.WatchScopeEdited, flatListToString(enabledScopes))
	end
end

function ScopeDropdownField:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization
	local tooltips = {
		[1] = nil,
		[2] = localization:getText("Watch", "LocalTooltip"),
		[3] = localization:getText("Watch", "UpvalueTooltip"),
		[4] = localization:getText("Watch", "GlobalTooltip"),
	}

	return Roact.createElement(DropdownField, {
		KeyTexts = self.keyColumns,
		Tooltips = tooltips,
		NumDisplay = props.NumEnabledChoices,
		MaxDisplay = 3,
		ClickCallback = self.clickCallback,
		KeyStates = props.KeyStates,
		Localization = localization,
		Style = style,
		Widget = "Watch",
		DropdownWidth = DROPDOWN_WIDTH,
		ShouldShowDropdownIcon = props.ShouldShowDropdownIcon,
		Tooltip = localization:getText("Watch", "FilterScopes"),
	})
end

ScopeDropdownField = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(ScopeDropdownField)

ScopeDropdownField = RoactRodux.connect(function(state, props)
	local enabledScopes = state.Watch.listOfEnabledScopes
	local newKeyStates = {}
	newKeyStates[2] = hasValue(enabledScopes, VariableScope.LocalScope)
	newKeyStates[3] = hasValue(enabledScopes, VariableScope.UpvalueScope)
	newKeyStates[4] = hasValue(enabledScopes, VariableScope.GlobalScope)
	return {
		NumEnabledChoices = #enabledScopes,
		KeyStates = newKeyStates,
	}
end, function(dispatch)
	return {
		onScopeFilterChange = function(enabledScopes)
			return dispatch(FilterScopeWatchThunk(enabledScopes))
		end,
	}
end)(ScopeDropdownField)

return ScopeDropdownField
