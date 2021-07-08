local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)
local AddCallstackAction = require(Actions.Callstack.AddCallstack)
local AddThreadIdAction = require(Actions.Callstack.AddThreadId)
local ResumedAction = require(Actions.Common.Resumed)
local ThreadInfo = require(Models.ThreadInfo)

return Rodux.createReducer({
	threadList = {},
	threadIdToFrameList = {},
	currentFrame = 0,
}, {

	[SetCurrentFrameNumberAction.name] = function(state, action)
		assert(typeof(action.currentFrame) == "number", ("Expected currentFrame to be a number, received %s"):format(type(action.currentFrame)))
		return Cryo.Dictionary.join(state, {
			currentFrame = action.currentFrame,
		})		
	end,

	[AddThreadIdAction.name] = function(state, action)
		assert(typeof(action.threadId) == "number", ("Expected threadId to be a number, received %s"):format(type(action.threadId)))
		assert(typeof(action.displayString) == "string", ("Expected displayString to be a string, received %s"):format(type(action.displayString)))
		return Cryo.Dictionary.join(state, {
			threadList = Cryo.List.join(state.threadList, {ThreadInfo.fromData(action)})
		})
	end,

	[AddCallstackAction.name] = function(state, action)
		assert(typeof(action.threadId) == "number", ("Expected threadId to be a number, received %s"):format(type(action.threadId)))
		assert(typeof(action.frameList) == "table", ("Expected frameList to be a table, received %s"):format(type(action.frameList)))
		return Cryo.Dictionary.join(state, {
			threadIdToFrameList = Cryo.Dictionary.join(state.threadIdToFrameList, {
				[action.threadId] = action.frameList,
			})
		})
	end,

	[ResumedAction.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			threadList = {},
			threadIdToFrameList = {},
			currentFrame = 0,
		})	
	end,
})
