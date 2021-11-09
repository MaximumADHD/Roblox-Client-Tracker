local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Breakpoint = require(script.Parent.Breakpoint)
local Callstack = require(script.Parent.Callstack)
local Common = require(script.Parent.Common)
local Watch = require(script.Parent.Watch)
local ScriptInfo = require(script.Parent.ScriptInfo)

return Rodux.combineReducers({
	Breakpoint = Breakpoint,
	Watch = Watch,
	Callstack = Callstack,
	Common = Common,
	ScriptInfo = ScriptInfo,
})
