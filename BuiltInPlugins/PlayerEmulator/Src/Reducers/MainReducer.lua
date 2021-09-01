local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local PlayerEmulatorCustomPoliciesToggleEnabledUIChanges = game:GetFastFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges")

local MainSwitchReducer = require(Plugin.Src.Reducers.MainSwitchReducer)
local CustomPolicySwitchReducer = require(Plugin.Src.Reducers.CustomPolicySwitchReducer)
local LanguagesReducer = require(Plugin.Src.Reducers.LanguagesReducer)
local CountryRegionReducer = require(Plugin.Src.Reducers.CountryRegionReducer)
local PoliciesReducer = require(Plugin.Src.Reducers.PoliciesReducer)

local MainReducer
if PlayerEmulatorCustomPoliciesToggleEnabledUIChanges then
	MainReducer = Rodux.combineReducers({
		MainSwitch = MainSwitchReducer,
		Languages = LanguagesReducer,
		CountryRegion = CountryRegionReducer,
		CustomPolicySwitch = CustomPolicySwitchReducer,
		Policies = PoliciesReducer,
	})
else
	MainReducer = Rodux.combineReducers({
		MainSwitch = MainSwitchReducer,
		Languages = LanguagesReducer,
		CountryRegion = CountryRegionReducer,
		Policies = PoliciesReducer,
	})
end

return MainReducer
