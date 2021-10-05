local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddCallstackAction = require(Actions.Callstack.AddCallstack)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local ResumedAction = require(Actions.Common.Resumed)
local BreakpointHit = require(Actions.Common.BreakpointHit)
local ColumnFilterChange = require(Actions.Callstack.ColumnFilterChange)
local ThreadInfo = require(Models.ThreadInfo)
local DebuggerStateToken = require(Models.DebuggerStateToken)
local CallstackRow = require(Models.Callstack.CallstackRow)
local Columns = require(Models.Callstack.ColumnEnum)

type ThreadId = number

type CallstackVars = {
	threadList : {ThreadInfo.ThreadInfo},
	threadIdToFrameList : {[ThreadId] : {CallstackRow.CallstackRow}}
}

type CallstackStore = {
	stateTokenToCallstackVars : {[DebuggerStateToken.DebuggerStateToken] : CallstackVars},
	listOfEnabledColumns : {string},
}

local productionStartStore = {
	stateTokenToCallstackVars = {},
	listOfEnabledColumns = {Columns.Frame, Columns.Layer, Columns.Source, Columns.Function, Columns.Line},
}

return Rodux.createReducer(productionStartStore, {
	[AddThreadIdAction.name] = function(state : CallstackStore, action : AddThreadIdAction.Props)
		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = Cryo.Dictionary.join(state.stateTokenToCallstackVars, {
				[action.debuggerStateToken] = {
					threadList = Cryo.List.join(state.stateTokenToCallstackVars[action.debuggerStateToken].threadList, {ThreadInfo.fromData(action)}),
					threadIdToFrameList = state.stateTokenToCallstackVars[action.debuggerStateToken].threadIdToFrameList,
				}
			})
		})
	end,

	[AddCallstackAction.name] = function(state : CallstackStore, action : AddCallstackAction.Props)
		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = Cryo.Dictionary.join(state.stateTokenToCallstackVars, {
				[action.debuggerStateToken] = {
					threadIdToFrameList = Cryo.Dictionary.join(state.stateTokenToCallstackVars[action.debuggerStateToken].threadIdToFrameList, {
						[action.threadId] = action.frameList,
					}),
					threadList = state.stateTokenToCallstackVars[action.debuggerStateToken].threadList,
				}
			})
		})
	end,

	[BreakpointHit.name] = function(state : CallstackStore, action : BreakpointHit.Props)
		assert(state.stateTokenToCallstackVars[action.debuggerStateToken] == nil)
		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = Cryo.Dictionary.join(state.stateTokenToCallstackVars, {
				[action.debuggerStateToken] = {
					threadList = {},
					threadIdToFrameList = {},
				}
			})
		})
	end,

	[ResumedAction.name] = function(state : CallstackStore, action)
		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = {},
		})
	end,
	
	[ColumnFilterChange.name] = function(state : CallstackStore, action : ColumnFilterChange.Props)
		return Cryo.Dictionary.join(state, {
			listOfEnabledColumns = action.listOfEnabledColumns,
		})
	end,
})
