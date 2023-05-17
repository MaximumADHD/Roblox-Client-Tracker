local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local Status = require(RoduxCall.Enums).Status :: any
local CallModel = require(RoduxCall.Models).CallModel :: any
local CallActivated = require(RoduxCall.Actions).CallActivated :: any
local CallEnded = require(RoduxCall.Actions).CallEnded :: any
local CallInitialized = require(RoduxCall.Actions).CallInitialized :: any
local CallUpdated = require(RoduxCall.Actions).CallUpdated :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CurrentCall = nil

return function()
	return Rodux.createReducer(DEFAULT_STATE, {
		[CallActivated.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.CallActivatedAction)
			local call = action.payload.callInfo :: roduxCallTypes.CallModel
			call.status = Status.Active.rawValue()
			return CallModel.format(call)
		end,

		[CallInitialized.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.CallInitializedAction)
			local call = action.payload.callInfo :: roduxCallTypes.CallModel
			call.status = Status.Connecting.rawValue()
			return CallModel.format(call)
		end,

		[CallEnded.name] = function(_: roduxCallTypes.CurrentCall, _: roduxCallTypes.CallEndedAction)
			return nil
		end,

		[CallUpdated.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.CallUpdatedAction)
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
