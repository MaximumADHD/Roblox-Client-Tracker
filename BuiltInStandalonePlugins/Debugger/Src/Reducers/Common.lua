local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)
local ResumedAction = require(Actions.Common.Resumed)
local Step = require(Actions.Common.Step)
local BreakpointHit = require(Actions.Common.BreakpointHit)

local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

type ThreadId = number
type FrameNumber = number

type CommonStore = {
	debuggerStateTokenHistory : {DebuggerStateToken.DebuggerStateToken},
	currentThreadId : ThreadId,
	threadIdToCurrentFrameNumber : {[ThreadId] : FrameNumber}
}

return Rodux.createReducer({
	currentThreadId = -1,
	threadIdToCurrentFrameNumber = {},
	debuggerStateTokenHistory = {},
}, {
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
})
