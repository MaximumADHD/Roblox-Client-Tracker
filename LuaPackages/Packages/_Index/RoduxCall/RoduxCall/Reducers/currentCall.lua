local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local Status = require(RoduxCall.Enums).Status :: any
local CallStateModel = require(RoduxCall.Models).CallStateModel :: any
local StartCall = require(RoduxCall.Actions).StartCall :: any
local EndCall = require(RoduxCall.Actions).EndCall :: any
local ConnectingCall = require(RoduxCall.Actions).ConnectingCall :: any
local UpdateCall = require(RoduxCall.Actions).UpdateCall :: any
local FailedCall = require(RoduxCall.Actions).FailedCall :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CurrentCall = nil

return function()
	return Rodux.createReducer(DEFAULT_STATE, {
		[StartCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.StartCallAction)
			local call = action.payload.call :: roduxCallTypes.CallStateModel
			call.status = Status.Active.rawValue()
			return CallStateModel.format(call)
		end,

		[ConnectingCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.ConnectingCallAction)
			local call = action.payload.call :: roduxCallTypes.CallStateModel
			call.status = Status.Connecting.rawValue()
			return CallStateModel.format(call)
		end,

		[EndCall.name] = function(_: roduxCallTypes.CurrentCall, _: roduxCallTypes.EndCallAction)
			return nil
		end,

		[UpdateCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.UpdateCallAction)
			local call = action.payload.call
			if call.status == Status.Idle.rawValue() then
				return nil
			else
				return CallStateModel.format(call)
			end
		end,

		[FailedCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.FailedCallAction)
			local lastCall = action.payload.lastCall
			lastCall.status = Status.Failed.rawValue()
			return CallStateModel.format(lastCall)
		end,
	} :: {
		[string]: (roduxCallTypes.CurrentCall, any) -> roduxCallTypes.CurrentCall,
	})
end
