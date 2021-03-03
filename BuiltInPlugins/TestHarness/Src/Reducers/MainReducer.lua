local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local TestCache = require(script.Parent.TestCache)

return Rodux.combineReducers({
	TestCache = TestCache,
})
