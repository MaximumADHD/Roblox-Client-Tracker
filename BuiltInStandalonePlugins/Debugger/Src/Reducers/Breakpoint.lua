local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddBreakpointAction = require(Actions.BreakpointsWindow.AddBreakpoint)
local DeleteBreakpointAction = require(Actions.BreakpointsWindow.DeleteBreakpoint)
local ModifyBreakpointAction = require(Actions.BreakpointsWindow.ModifyBreakpoint)
local SetContinuedExecution = require(Actions.BreakpointsWindow.SetContinuedExecution)
local SetBreakpointEnabled = require(Actions.BreakpointsWindow.SetBreakpointEnabled)
local Breakpoint = require(Models.Breakpoint)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local deepCopy = Util.deepCopy

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
	
	[ModifyBreakpointAction.name] = function(state : BreakpointStore, action : ModifyBreakpointAction.Props)
		-- throw warning if modifying breakpoint ID that doesn't exist
		if state.BreakpointIdsInDebuggerConnection == nil or state.BreakpointInfo[action.breakpoint.id] == nil then
			assert(false)
		end
		local updatedBreakpointInfo = Cryo.Dictionary.join(state.BreakpointInfo or {}, {
			[action.breakpoint.id] = action.breakpoint
		})
		return Cryo.Dictionary.join(
			state, {BreakpointInfo = updatedBreakpointInfo}
		)
	end,
	
	[DeleteBreakpointAction.name] = function(state : BreakpointStore, action : DeleteBreakpointAction.Props)
		if not (state.BreakpointInfo and state.BreakpointInfo[action.breakpointId]) then
			assert(false)
		end
		local newBreakpointInfo = deepCopy(state.BreakpointInfo)
		newBreakpointInfo[action.breakpointId] = nil
		local newBreakpointIdsForConnection = deepCopy(state.BreakpointIdsInDebuggerConnection)
		for _, debuggerConnBreakpoints in pairs(newBreakpointIdsForConnection) do
			debuggerConnBreakpoints[action.breakpointId] = nil
		end
		return Cryo.Dictionary.join(
			state, {BreakpointIdsInDebuggerConnection = newBreakpointIdsForConnection}, {BreakpointInfo = newBreakpointInfo}
		)
	end,

	[SetContinuedExecution.name] = function(state : BreakpointStore, action : SetContinuedExecution.Props)
		local newBreakpointInfo = deepCopy(state.BreakpointInfo)
		newBreakpointInfo[action.breakpointId].continueExecution = action.isEnabled
		return Cryo.Dictionary.join(
			state, {BreakpointInfo = newBreakpointInfo}
		)
	end,

	[SetBreakpointEnabled.name] = function(state : BreakpointStore, action : SetContinuedExecution.Props)
		local newBreakpointInfo = deepCopy(state.BreakpointInfo)
		newBreakpointInfo[action.breakpointId].isEnabled = action.isEnabled
		return Cryo.Dictionary.join(
			state, {BreakpointInfo = newBreakpointInfo}
		)
	end,
})
