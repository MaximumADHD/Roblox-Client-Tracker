local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local LanguagesReducer = require(Plugin.Src.Reducers.LanguagesReducer)
local CountryRegionReducer = require(Plugin.Src.Reducers.CountryRegionReducer)

local MainReducer = Rodux.combineReducers({
	Languages = LanguagesReducer,
	CountryRegion = CountryRegionReducer,
})

return MainReducer