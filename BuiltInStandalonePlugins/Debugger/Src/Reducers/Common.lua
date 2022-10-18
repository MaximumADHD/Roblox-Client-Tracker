local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)
local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)
local ResumedAction = require(Actions.Common.Resumed)
local SetPausedState = require(Actions.Common.SetPausedState)
local SimPaused = require(Actions.Common.SimPaused)
local SetCurrentBreakpointId = require(Actions.Common.SetCurrentBreakpointId)
local ClearConnectionDataAction = require(Actions.Common.ClearConnectionData)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local SetFocusedDebuggerConnection = require(Actions.Common.SetFocusedDebuggerConnection)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local deepCopy = Util.deepCopy

local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

local FFlagStudioClearThreadIdOnStepping = game:GetFastFlag("StudioClearThreadIdOnStepping")
local FFlagStudioDebuggerFixStepButtonsOnError = require(Plugin.Src.Flags.GetFFlagStudioDebuggerFixStepButtonsOnError)

type ThreadId = number
type FrameNumber = number
type DebuggerConnectionId = number

type ThreadIdToFrameMap = {
	[ThreadId]: FrameNumber,
}

type CommonStore = {
	debuggerConnectionIdToDST: { [DebuggerConnectionId]: DebuggerStateToken.DebuggerStateToken },
	currentDebuggerConnectionId: number,
	debuggerConnectionIdToCurrentThreadId: { [DebuggerConnectionId]: number },
	currentFrameMap: { [DebuggerConnectionId]: ThreadIdToFrameMap },
	currentBreakpointId: number,
	isPaused: boolean,
	hitException: { [ThreadId]: boolean },
	pausedDebuggerConnectionIds: { [DebuggerConnectionId]: DebuggerConnectionId },
}

local productionStartStore = {
	debuggerConnectionIdToDST = {},
	currentDebuggerConnectionId = Constants.kInvalidDebuggerConnectionId,
	debuggerConnectionIdToCurrentThreadId = {},
	currentFrameMap = {},
	currentBreakpointId = nil,
	isPaused = false,
	hitException = {},
	pausedDebuggerConnectionIds = {},
}

return Rodux.createReducer(productionStartStore, {
	[SetCurrentThreadAction.name] = function(state: CommonStore, action: SetCurrentThreadAction.Props)
		local newThreadMap = deepCopy(state.debuggerConnectionIdToCurrentThreadId)
		newThreadMap[state.currentDebuggerConnectionId] = action.currentThreadId

		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToCurrentThreadId = newThreadMap,
		})
	end,

	[SetCurrentFrameNumberAction.name] = function(state: CommonStore, action: SetCurrentFrameNumberAction.Props)
		local newCurrentFrameMap = deepCopy(state.currentFrameMap)

		assert(newCurrentFrameMap[state.currentDebuggerConnectionId] ~= nil)

		newCurrentFrameMap[state.currentDebuggerConnectionId][action.threadId] = action.currentFrame

		return Cryo.Dictionary.join(state, {
			currentFrameMap = newCurrentFrameMap,
		})
	end,

	[ResumedAction.name] = function(state: CommonStore, action)
		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToDST = Cryo.Dictionary.join(
				state.debuggerConnectionIdToDST,
				{ [action.debuggerStateToken.debuggerConnectionId] = Cryo.None }
			),
			debuggerConnectionIdToCurrentThreadId = {},
			currentFrameMap = {},
			isPaused = false,
			hitException = {},
			pausedDebuggerConnectionIds = Cryo.Dictionary.join(
				state.pausedDebuggerConnectionIds,
				{ [action.debuggerStateToken.debuggerConnectionId] = Cryo.None }
			),
		})
	end,

	[ClearConnectionDataAction.name] = function(state: CommonStore, action)
		local removedConnectionId = action.debuggerStateToken.debuggerConnectionId
		local shouldBePaused = state.isPaused
		local newFocusedConnectionId = state.currentDebuggerConnectionId
		if removedConnectionId == state.currentDebuggerConnectionId then
			newFocusedConnectionId = Constants.kInvalidDebuggerConnectionId
			shouldBePaused = false
		end
		local newPausedDebuggerConnectionIds = Cryo.Dictionary.join(
			state.pausedDebuggerConnectionIds,
			{ [removedConnectionId] = Cryo.None }
		)
		if next(newPausedDebuggerConnectionIds) == nil then
			shouldBePaused = false
		end
	
		local hitExceptionVal = deepCopy(state.hitException)
		-- clear all threadIds from hitException corresponding to the removedConnectionId
		if FFlagStudioDebuggerFixStepButtonsOnError() and state.currentFrameMap[removedConnectionId] then
			for threadID, _ in pairs(state.currentFrameMap[removedConnectionId]) do 
				hitExceptionVal = Cryo.Dictionary.join(hitExceptionVal, { [threadID] = Cryo.None })
			end
		end

		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToDST = Cryo.Dictionary.join(
				state.debuggerConnectionIdToDST,
				{ [removedConnectionId] = Cryo.None }
			),
			currentDebuggerConnectionId = newFocusedConnectionId,
			debuggerConnectionIdToCurrentThreadId = Cryo.List.removeValue(
				state.debuggerConnectionIdToCurrentThreadId,
				removedConnectionId
			),
			currentFrameMap = Cryo.List.removeValue(state.currentFrameMap, removedConnectionId),
			isPaused = shouldBePaused,
			hitException = hitExceptionVal,
			pausedDebuggerConnectionIds = newPausedDebuggerConnectionIds,
		})
	end,

	[SimPaused.name] = function(state: CommonStore, action: SimPaused.Props)
		local pausedConnectionId = action.debuggerStateToken.debuggerConnectionId
		return Cryo.Dictionary.join(state, {
			debuggerConnectionIdToDST = Cryo.Dictionary.join(
				state.debuggerConnectionIdToDST,
				{ [action.debuggerStateToken.debuggerConnectionId] = action.debuggerStateToken }
			),
			isPaused = true,
			hitException = if FFlagStudioDebuggerFixStepButtonsOnError() then Cryo.Dictionary.join(
				state.hitException,
				{ [action.threadId] = action.hitException }
			) else state.hitException,
			pausedDebuggerConnectionIds = Cryo.Dictionary.join(
				state.pausedDebuggerConnectionIds,
				{ [pausedConnectionId] = pausedConnectionId }
			),
			debuggerConnectionIdToCurrentThreadId = Cryo.Dictionary.join(
				state.debuggerConnectionIdToCurrentThreadId,
				{ [pausedConnectionId] = nil }
			),
			currentFrameMap = Cryo.Dictionary.join(state.currentFrameMap, { [pausedConnectionId] = nil }),
		})
	end,

	[SetCurrentBreakpointId.name] = function(state: CommonStore, action: SetCurrentBreakpointId.Props)
		return Cryo.Dictionary.join(state, { currentBreakpointId = action.breakpointId })
	end,

	[SetPausedState.name] = function(state: CommonStore, action: SetPausedState.Props)
		if FFlagStudioClearThreadIdOnStepping then
			if action.pause then
				return Cryo.Dictionary.join(state, { isPaused = action.pause})
			else
				return Cryo.Dictionary.join(state, { isPaused = action.pause, debuggerConnectionIdToCurrentThreadId = {}})
			end
		else
			return Cryo.Dictionary.join(state, { isPaused = action.pause})
		end
	end,

	[AddThreadIdAction.name] = function(state: CommonStore, action: AddThreadIdAction.Props)
		local newState = {}
		newState.debuggerConnectionIdToCurrentThreadId = deepCopy(state.debuggerConnectionIdToCurrentThreadId)

		if newState.debuggerConnectionIdToCurrentThreadId[state.currentDebuggerConnectionId] == nil then
			newState.debuggerConnectionIdToCurrentThreadId[state.currentDebuggerConnectionId] = action.threadId
		end

		newState.currentFrameMap = deepCopy(state.currentFrameMap)
		if newState.currentFrameMap[state.currentDebuggerConnectionId] == nil then
			newState.currentFrameMap[state.currentDebuggerConnectionId] = {}
		end
		newState.currentFrameMap[state.currentDebuggerConnectionId][action.threadId] = 1

		return Cryo.Dictionary.join(state, newState)
	end,

	[SetFocusedDebuggerConnection.name] = function(state: CommonStore, action: SetFocusedDebuggerConnection.Props)
		return Cryo.Dictionary.join(state, {
			currentDebuggerConnectionId = action.debuggerConnectionId,
		})
	end,
})
