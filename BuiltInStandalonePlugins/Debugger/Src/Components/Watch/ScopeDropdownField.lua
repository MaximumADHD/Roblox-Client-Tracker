local PluginFolder = script.Parent.Parent.Parent.Parent
local Roact = require(PluginFolder.Packages.Roact)
local RoactRodux = require(PluginFolder.Packages.RoactRodux)
local Framework = require(PluginFolder.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local DropdownField = require(PluginFolder.Src.Components.Common.DropdownField)

local Thunks = PluginFolder.Src.Thunks
local FilterScopeWatchThunk = require(Thunks.Watch.FilterScopeWatchThunk)

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
end

function ScopeDropdownField:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization
	
	return Roact.createElement(DropdownField, {
		KeyTexts = self.keyColumns,
		NumDisplay = props.NumEnabledChoices,
		MaxDisplay = 3,
		ClickCallback = props.onScopeFilterChange,
		KeyStates = props.KeyStates,
		Localization = localization,
		Style = style,
		Widget = "Watch",
		DropdownWidth = DROPDOWN_WIDTH,
	})
end

ScopeDropdownField = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(ScopeDropdownField)

ScopeDropdownField = RoactRodux.connect(
	function(state, props)
		local enabledScopes = state.Watch.listOfEnabledScopes
		local newKeyStates = {}
		newKeyStates[2] = hasValue(enabledScopes, VariableScope.LocalScope)
		newKeyStates[3] = hasValue(enabledScopes, VariableScope.UpvalueScope)
		newKeyStates[4] = hasValue(enabledScopes, VariableScope.GlobalScope)
		return {
			NumEnabledChoices = #enabledScopes,
			KeyStates = newKeyStates,
		}
	end,
	
	function(dispatch)
		return {
			onScopeFilterChange = function(enabledScopes)
				return dispatch(FilterScopeWatchThunk(enabledScopes))
			end,
		}
	end
	
)(ScopeDropdownField)

return ScopeDropdownField
