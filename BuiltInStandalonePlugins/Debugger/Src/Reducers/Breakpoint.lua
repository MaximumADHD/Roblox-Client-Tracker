local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddBreakpointAction = require(Actions.BreakpointsWindow.AddBreakpoint)
local DeleteBreakpointAction = require(Actions.BreakpointsWindow.DeleteBreakpoint)
local ModifyBreakpointAction = require(Actions.BreakpointsWindow.ModifyBreakpoint)
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
	MetaBreakpoints : {
		[BreakpointId] : Breakpoint.Breakpoint,
	},
}

local initialState : BreakpointStore = {
	BreakpointIdsInDebuggerConnection = {},
	MetaBreakpoints = {},
}

return Rodux.createReducer(initialState, {
	[AddBreakpointAction.name] = function(state : BreakpointStore, action : AddBreakpointAction.Props)
		-- throw warning if adding breakpointId to a debuggerConnectionId that already contains it.
		if state.BreakpointIdsInDebuggerConnection and state.BreakpointIdsInDebuggerConnection[action.debuggerConnectionId] and 
			state.BreakpointIdsInDebuggerConnection[action.debuggerConnectionId][action.breakpoint.id] then
			assert(false)
		end
		local updatedBreakpointIdsForConnection = Cryo.Dictionary.join(state.BreakpointIdsInDebuggerConnection, {
			[action.debuggerConnectionId] = Cryo.Dictionary.join(
				(state.BreakpointIdsInDebuggerConnection and state.BreakpointIdsInDebuggerConnection[action.debuggerConnectionId]) or {}, 
				{[action.breakpoint.id] = action.breakpoint.id}
			)
		})
		local updatedMetaBreakpoints = Cryo.Dictionary.join(state.MetaBreakpoints, {
			[action.breakpoint.id] = action.breakpoint
		})
		return Cryo.Dictionary.join(
			state, {BreakpointIdsInDebuggerConnection = updatedBreakpointIdsForConnection}, {MetaBreakpoints = updatedMetaBreakpoints}
		)
	end,
	
	[ModifyBreakpointAction.name] = function(state : BreakpointStore, action : ModifyBreakpointAction.Props)
		-- throw warning if modifying breakpoint ID that doesn't exist
		if state.BreakpointIdsInDebuggerConnection == nil or state.MetaBreakpoints[action.breakpoint.id] == nil then
			assert(false)
		end
		local updatedMetaBreakpoints = Cryo.Dictionary.join(state.MetaBreakpoints, {
			[action.breakpoint.id] = action.breakpoint
		})
		return Cryo.Dictionary.join(
			state, {MetaBreakpoints = updatedMetaBreakpoints}
		)
	end,
	
	[DeleteBreakpointAction.name] = function(state : BreakpointStore, action : DeleteBreakpointAction.Props)
		if not (state.MetaBreakpoints and state.MetaBreakpoints[action.breakpointId]) then
			assert(false)
		end
		local newMetaBreakpoints = deepCopy(state.MetaBreakpoints)
		newMetaBreakpoints[action.breakpointId] = nil
		local newBreakpointIdsForConnection = deepCopy(state.BreakpointIdsInDebuggerConnection)
		for _, debuggerConnBreakpoints in pairs(newBreakpointIdsForConnection) do
			debuggerConnBreakpoints[action.breakpointId] = nil
		end
		return Cryo.Dictionary.join(
			state, {BreakpointIdsInDebuggerConnection = newBreakpointIdsForConnection}, {MetaBreakpoints = newMetaBreakpoints}
		)
	end,
})
