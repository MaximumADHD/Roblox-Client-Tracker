local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddBreakpointAction = require(Actions.BreakpointsWindow.AddBreakpoint)
local Breakpoint = require(Models.Breakpoint)

type BreakpointId = number
type DebuggerConnectionId = number

type BreakpointStore = {
	[DebuggerConnectionId] : {
		[BreakpointId] : Breakpoint.Breakpoint,
	}
}

return Rodux.createReducer({}, {
	[AddBreakpointAction.name] = function(state : BreakpointStore, action : AddBreakpoint.Props)
		return Cryo.Dictionary.join(state, {
			[action.debuggerConnectionId] = Cryo.Dictionary.join(
				state[action.debuggerConnectionId] or {}, {
					[action.breakpoint.id] = action.breakpoint
				}
			)
		})
	end,
})
