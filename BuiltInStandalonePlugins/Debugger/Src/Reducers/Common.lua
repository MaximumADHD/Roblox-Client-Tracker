local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)
local ResumedAction = require(Actions.Common.Resumed)
local Step = require(Actions.Common.Step)
local BreakpointHit = require(Actions.Common.BreakpointHit)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)

local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local deepCopy = Util.deepCopy

local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

type ThreadId = number
type FrameNumber = number

type CommonStore = {
	debuggerStateTokenHistory : {DebuggerStateToken.DebuggerStateToken},
	currentThreadId : ThreadId,
	threadIdToCurrentFrameNumber : {[ThreadId] : FrameNumber}
}

local productionStartStore = {
	currentThreadId = -1,
	threadIdToCurrentFrameNumber = {},
	debuggerStateTokenHistory = {},
}

return Rodux.createReducer(productionStartStore, {
	[SetCurrentThreadAction.name] = function(state : CommonStore, action : SetCurrentThreadAction.Props)
		return Cryo.Dictionary.join(state, {
			currentThreadId = action.currentThreadId,
		})
	end,

	[SetCurrentFrameNumberAction.name] = function(state : CommonStore, action : SetCurrentFrameNumberAction.Props)
		return Cryo.Dictionary.join(state, {
			threadIdToCurrentFrameNumber = Cryo.Dictionary.join(state.threadIdToCurrentFrameNumber, {
				[action.threadId] = action.currentFrame,
			})
		})
	end,

	[ResumedAction.name] = function(state : CommonStore, action)
		return Cryo.Dictionary.join(state, {
			currentThreadId = -1,
			threadIdToCurrentFrameNumber = {},
			debuggerStateTokenHistory = {}
		})
	end,

	[Step.name] = function(state : CommonStore, action : Step.Props)
		assert(#state.debuggerStateTokenHistory >= 1)

		return Cryo.Dictionary.join(state, {
			debuggerStateTokenHistory = Cryo.List.join(state.debuggerStateTokenHistory, {action.debuggerStateToken})
		})
	end,

	[BreakpointHit.name] = function(state : CommonStore, action : BreakpointHit.Props)
		return Cryo.Dictionary.join(state, {
			debuggerStateTokenHistory = {[1] = action.debuggerStateToken}
		})
	end,

	[AddThreadIdAction.name] = function(state : CommonStore, action : AddThreadIdAction.Props)
		local newState = {}
		if (state.currentThreadId == -1) then
			newState.currentThreadId = action.threadId
		else
			newState.currentThreadId = state.currentThreadId
		end
		newState.threadIdToCurrentFrameNumber = deepCopy(state.threadIdToCurrentFrameNumber)
		newState.threadIdToCurrentFrameNumber[action.threadId] = 1

		return Cryo.Dictionary.join(state, newState)
	end,
})
