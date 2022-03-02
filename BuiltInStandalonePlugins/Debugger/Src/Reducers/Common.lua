local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)
local ResumedAction = require(Actions.Common.Resumed)
local Step = require(Actions.Common.Step)
local SimPaused = require(Actions.Common.SimPaused)
local SetCurrentBreakpointId = require(Actions.Common.SetCurrentBreakpointId)
local ClearConnectionDataAction = require(Actions.Common.ClearConnectionData)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local SetFocusedDebuggerConnection = require(Actions.Common.SetFocusedDebuggerConnection)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local deepCopy = Util.deepCopy

local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

type ThreadId = number
type FrameNumber = number
type DebuggerConnectionId = number

type ThreadToFrameMap = {
	[ThreadId] : FrameNumber
}

type CommonStore = {
	debuggerConnectionIdToDST : {[DebuggerConnectionId] : DebuggerStateToken.DebuggerStateToken},
	currentDebuggerConnectionId : number,
	debuggerConnectionIdToCurrentThreadId : {[DebuggerConnectionId] : number},
	currentFrameMap : {[DebuggerConnectionId] : ThreadToFrameMap},
	currentBreakpointId : number,
	isPaused : boolean,
	pausedDebuggerConnectionIds : {[DebuggerConnectionId] : DebuggerConnectionId},
}

local productionStartStore = {
	debuggerConnectionIdToDST = {},
	currentDebuggerConnectionId = -1,
	debuggerConnectionIdToCurrentThreadId = {},
	currentFrameMap = {},
	currentBreakpointId = nil,
	isPaused = false,
	pausedDebuggerConnectionIds = {},
}

return Rodux.createReducer(productionStartStore, {
	[SetCurrentThreadAction.name] = function(state : CommonStore, action : SetCurrentThreadAction.Props)
		local newThreadMap = deepCopy(state.debuggerConnectionIdToCurrentThreadId)
		newThreadMap[state.currentDebuggerConnectionId] = action.currentThreadId

		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToCurrentThreadId = newThreadMap,
		})
	end,

	[SetCurrentFrameNumberAction.name] = function(state : CommonStore, action : SetCurrentFrameNumberAction.Props)
		local newCurrentFrameMap = deepCopy(state.currentFrameMap)

		assert(newCurrentFrameMap[state.currentDebuggerConnectionId] ~= nil)

		newCurrentFrameMap[state.currentDebuggerConnectionId][action.threadId] = action.currentFrame

		return Cryo.Dictionary.join(state, {
			currentFrameMap = newCurrentFrameMap
		})
	end,

	[ResumedAction.name] = function(state : CommonStore, action)
		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToCurrentThreadId = {},
			currentFrameMap = {},
			isPaused = false,
			pausedDebuggerConnectionIds = Cryo.Dictionary.join(state.pausedDebuggerConnectionIds, {[action.debuggerStateToken.debuggerConnectionId] = Cryo.None}),
		})
	end,

	[ClearConnectionDataAction.name] = function(state : CommonStore, action)
		local removedConnectionId = action.debuggerStateToken.debuggerConnectionId
		local shouldBePaused = state.isPaused
		local newFocusedConnectionId = state.currentDebuggerConnectionId
		if removedConnectionId == state.currentDebuggerConnectionId then
			newFocusedConnectionId = -1
			shouldBePaused = false
		end
		local newPausedDebuggerConnectionIds = Cryo.Dictionary.join(state.pausedDebuggerConnectionIds, {[removedConnectionId] = Cryo.None})
		if next(newPausedDebuggerConnectionIds) == nil then
			shouldBePaused = false
		end
		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToDST = Cryo.Dictionary.join(state.debuggerConnectionIdToDST, {[removedConnectionId] = Cryo.None}),
			currentDebuggerConnectionId = newFocusedConnectionId,
			debuggerConnectionIdToCurrentThreadId = Cryo.List.removeValue(state.debuggerConnectionIdToCurrentThreadId, removedConnectionId),
			currentFrameMap = Cryo.List.removeValue(state.currentFrameMap, removedConnectionId),
			isPaused = shouldBePaused,
			pausedDebuggerConnectionIds = newPausedDebuggerConnectionIds,
		})
	end,

	[Step.name] = function(state : CommonStore, action : Step.Props)
		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToDST = Cryo.Dictionary.join(state.debuggerConnectionIdToDST, {[action.debuggerStateToken.debuggerConnectionId] = action.debuggerStateToken}),
		})
	end,

	[SimPaused.name] = function(state : CommonStore, action : SimPaused.Props)
		local pausedConnectionId = action.debuggerStateToken.debuggerConnectionId

		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToDST = Cryo.Dictionary.join(state.debuggerConnectionIdToDST, {[action.debuggerStateToken.debuggerConnectionId] = action.debuggerStateToken}), 
			isPaused = true,
			pausedDebuggerConnectionIds = Cryo.Dictionary.join(state.pausedDebuggerConnectionIds, {[pausedConnectionId] = pausedConnectionId}),
		})
	end,

	[SetCurrentBreakpointId.name] = function(state : CommonStore, action : SetCurrentBreakpointId.Props)
		return Cryo.Dictionary.join(state, {currentBreakpointId = action.breakpointId})
	end,

	[AddThreadIdAction.name] = function(state : CommonStore, action : AddThreadIdAction.Props)
		local newState = {}
		newState.debuggerConnectionIdToCurrentThreadId = deepCopy(state.debuggerConnectionIdToCurrentThreadId)
		assert(newState.debuggerConnectionIdToCurrentThreadId[state.currentDebuggerConnectionId] ~= action.threadId)

		if (newState.debuggerConnectionIdToCurrentThreadId[state.currentDebuggerConnectionId] == nil) then
			newState.debuggerConnectionIdToCurrentThreadId[state.currentDebuggerConnectionId] = action.threadId
		end

		newState.currentFrameMap = deepCopy(state.currentFrameMap)
		if newState.currentFrameMap[state.currentDebuggerConnectionId] == nil then
			newState.currentFrameMap[state.currentDebuggerConnectionId] = {}
		end
		newState.currentFrameMap[state.currentDebuggerConnectionId][action.threadId] = 1

		return Cryo.Dictionary.join(state, newState)
	end,

	[SetFocusedDebuggerConnection.name] = function(state : CommonStore, action : SetFocusedDebuggerConnection.Props)
		return Cryo.Dictionary.join(state, {
			currentDebuggerConnectionId = action.debuggerConnectionId
		})
	end,
})
