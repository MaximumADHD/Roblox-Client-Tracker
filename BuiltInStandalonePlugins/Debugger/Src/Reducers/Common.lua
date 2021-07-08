local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local ResumedAction = require(Actions.Common.Resumed)

return Rodux.createReducer({
	currentThreadId = -1,
}, {
	[SetCurrentThreadAction.name] = function(state, action)
		assert(typeof(action.currentThreadId) == "number", ("Expected currentThreadId to be a number, received %s"):format(type(action.currentThreadId)))
		return Cryo.Dictionary.join(state, {
			currentThreadId = action.currentThreadId,
		})
	end,

	[ResumedAction.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			currentThreadId = -1,
		})
	end,
})
