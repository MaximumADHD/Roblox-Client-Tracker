local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddCallstackAction = require(Actions.Callstack.AddCallstack)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local ResumedAction = require(Actions.Common.Resumed)
local ClearConnectionDataAction = require(Actions.Common.ClearConnectionData)
local SimPaused = require(Actions.Common.SimPaused)
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
		if state.stateTokenToCallstackVars[action.debuggerStateToken] == nil then
			assert(false)
			return state
		end
		
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

	[SimPaused.name] = function(state : CallstackStore, action : SimPaused.Props)
		assert(state.stateTokenToCallstackVars[action.debuggerStateToken] == nil or
			state.stateTokenToCallstackVars[action.debuggerStateToken].threadIdToFrameList[action.threadId] == nil)
		
		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = Cryo.Dictionary.join(state.stateTokenToCallstackVars, {
				[action.debuggerStateToken] = {
					threadList = state.stateTokenToCallstackVars[action.debuggerStateToken] and 
						state.stateTokenToCallstackVars[action.debuggerStateToken].threadList or {},
					threadIdToFrameList = state.stateTokenToCallstackVars[action.debuggerStateToken] and
						state.stateTokenToCallstackVars[action.debuggerStateToken].threadIdToFrameList or {},
				}
			})
		})
	end,

	[ResumedAction.name] = function(state : CallstackStore, action)
		local newThreadList = {}
		for k,v in ipairs(state.stateTokenToCallstackVars[action.debuggerStateToken].threadList) do
			if v.threadId ~= action.threadId then
				table.insert(newThreadList, v)
			end
		end

		assert(state.stateTokenToCallstackVars[action.debuggerStateToken] ~= nil)

		local newThreadIdToFrameList = state.stateTokenToCallstackVars[action.debuggerStateToken].threadIdToFrameList
		newThreadIdToFrameList[action.threadId] = nil

		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = Cryo.Dictionary.join(state.stateTokenToCallstackVars, {
				[action.debuggerStateToken] = {
					threadIdToFrameList = newThreadIdToFrameList,
					threadList = newThreadList,
				}
			})
		})
	end,
	
	[ClearConnectionDataAction.name] = function(state : CallstackStore, action)
		return Cryo.Dictionary.join(state, {
			stateTokenToCallstackVars = Cryo.List.removeValue(state.stateTokenToCallstackVars, action.debuggerStateToken),
		})
	end,
	
	[ColumnFilterChange.name] = function(state : CallstackStore, action : ColumnFilterChange.Props)
		return Cryo.Dictionary.join(state, {
			listOfEnabledColumns = action.listOfEnabledColumns,
		})
	end,
})
