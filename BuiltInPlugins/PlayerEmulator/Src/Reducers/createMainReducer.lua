local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MainSwitchReducer = require(Plugin.Src.Reducers.MainSwitchReducer)
local CustomPolicySwitchReducer = require(Plugin.Src.Reducers.CustomPolicySwitchReducer)
local LanguagesReducer = require(Plugin.Src.Reducers.LanguagesReducer)
local CountryRegionReducer = require(Plugin.Src.Reducers.CountryRegionReducer)
local PoliciesReducer = require(Plugin.Src.Reducers.PoliciesReducer)

--returning a function rather than returning mainreducer directly allows us to run tests with the flag enabled/disabled
--since otherwise the module script will only be run once
return function()
	if game:GetFastFlag("PlayerEmulatorCustomPoliciesToggleEnabledUIChanges2") then
		return Rodux.combineReducers({
			MainSwitch = MainSwitchReducer,
			Languages = LanguagesReducer,
			CountryRegion = CountryRegionReducer,
			CustomPolicySwitch = CustomPolicySwitchReducer,
			Policies = PoliciesReducer,
		})
	end

	return Rodux.combineReducers({
		MainSwitch = MainSwitchReducer,
		Languages = LanguagesReducer,
		CountryRegion = CountryRegionReducer,
		Policies = PoliciesReducer,
	})
end

