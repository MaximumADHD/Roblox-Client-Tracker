local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddBreakpointAction = require(Actions.BreakpointsWindow.AddBreakpoint)
local Breakpoint = require(Models.Breakpoint)

type BreakpointId = number
type DebuggerConnectionId = number

-- Storing BreakpointIds in DebuggerConnection in a Map instead of List to quickly identify
-- if a breakpointId is already stored in a DebuggerConnectionId
type BreakpointStore = {
	BreakpointIdsInDebuggerConnection : {
		[DebuggerConnectionId] : {
			[BreakpointId] : BreakpointId,
		}
	},
	BreakpointInfo : {
		[BreakpointId] : Breakpoint.Breakpoint,
	}
}

local initialState : BreakpointStore = {
	BreakpointIdsInDebuggerConnection = {},
	BreakpointInfo = {},
}

return Rodux.createReducer(initialState, {
	[AddBreakpointAction.name] = function(state : BreakpointStore, action : AddBreakpointAction.Props)
		-- throw warning if adding breakpointId to a debuggerConnectionId that already contains it.
		if state.BreakpointIdsInDebuggerConnection and state.BreakpointIdsInDebuggerConnection[action.debuggerConnectionId] and 
			state.BreakpointIdsInDebuggerConnection[action.debuggerConnectionId][action.breakpoint.id] then
			assert(false)
		end
		local updatedBreakpointIdsForConnection = Cryo.Dictionary.join(state.BreakpointIdsInDebuggerConnection or {}, {
			[action.debuggerConnectionId] = Cryo.Dictionary.join(
				(state.BreakpointIdsInDebuggerConnection and state.BreakpointIdsInDebuggerConnection[action.debuggerConnectionId]) or {}, 
				{[action.breakpoint.id] = action.breakpoint.id}
			)
		})
		local updatedBreakpointInfo = Cryo.Dictionary.join(state.BreakpointInfo or {}, {
			[action.breakpoint.id] = action.breakpoint
		})
		return Cryo.Dictionary.join(
			state, {BreakpointIdsInDebuggerConnection = updatedBreakpointIdsForConnection}, {BreakpointInfo = updatedBreakpointInfo}
		)
	end,
})
