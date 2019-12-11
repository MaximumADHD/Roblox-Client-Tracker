local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MainSwitchReducer = require(Plugin.Src.Reducers.MainSwitchReducer)
local LanguagesReducer = require(Plugin.Src.Reducers.LanguagesReducer)
local CountryRegionReducer = require(Plugin.Src.Reducers.CountryRegionReducer)
local PoliciesReducer = require(Plugin.Src.Reducers.PoliciesReducer)

local MainReducer = Rodux.combineReducers({
	MainSwitch = MainSwitchReducer,
	Languages = LanguagesReducer,
	CountryRegion = CountryRegionReducer,
	Policies = PoliciesReducer,
})

return MainReducer