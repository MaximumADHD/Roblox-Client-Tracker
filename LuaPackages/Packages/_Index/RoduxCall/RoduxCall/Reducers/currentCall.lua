local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local Status = require(RoduxCall.Enums).Status :: any
local CallModel = require(RoduxCall.Models).CallModel :: any
local StartCall = require(RoduxCall.Actions).StartCall :: any
local EndCall = require(RoduxCall.Actions).EndCall :: any
local ConnectingCall = require(RoduxCall.Actions).ConnectingCall :: any
local UpdateCall = require(RoduxCall.Actions).UpdateCall :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CurrentCall = nil

return function()
	return Rodux.createReducer(DEFAULT_STATE, {
		[StartCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.StartCallAction)
			local call = action.payload.callInfo :: roduxCallTypes.CallModel
			call.status = Status.Active.rawValue()
			return CallModel.format(call)
		end,

		[ConnectingCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.ConnectingCallAction)
			local call = action.payload.callInfo :: roduxCallTypes.CallModel
			call.status = Status.Connecting.rawValue()
			return CallModel.format(call)
		end,

		[EndCall.name] = function(_: roduxCallTypes.CurrentCall, _: roduxCallTypes.EndCallAction)
			return nil
		end,

		[UpdateCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.UpdateCallAction)
			local call = action.payload.call
			if call.status == Status.Active.rawValue() then
				return CallModel.format(call)
			elseif call.status == Status.Connecting.rawValue() then
				return CallModel.format(call)
			end

			return nil
		end,
	} :: {
		[string]: (roduxCallTypes.CurrentCall, any) -> roduxCallTypes.CurrentCall,
	})
end
