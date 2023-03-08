local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local CancelCall = require(script.Parent.Parent.Actions.CancelCall)
local InitiateCall = require(script.Parent.Parent.Actions.InitiateCall)
local OutgoingCallState = require(script.Parent.Parent.Enums.OutgoingCallState)

return Rodux.createReducer(nil, {
	[CancelCall.name] = function(state, action)
		assert(state.callId == action.callId, "Current call does not match.")
		return nil
	end :: any,

	[InitiateCall.name] = function(state, action)
		assert(state == nil, "There is a current call.")

		return {
			callId = action.callId,
			userId = action.userId,
			username = action.username,
			state = OutgoingCallState.Calling,
		}
	end :: any,
})
