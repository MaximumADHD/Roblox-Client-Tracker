local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Callstack = require(script.Parent.Callstack)
local Common = require(script.Parent.Common)

return Rodux.combineReducers({
	Callstack = Callstack,
	Common = Common,
})
