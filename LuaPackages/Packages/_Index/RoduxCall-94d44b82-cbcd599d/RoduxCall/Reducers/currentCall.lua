local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local CallStateModel = require(RoduxCall.Models).CallStateModel :: any
local UpdateCall = require(RoduxCall.Actions).UpdateCall :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CurrentCall = nil

return function()
	return Rodux.createReducer(DEFAULT_STATE, {
		[UpdateCall.name] = function(_: roduxCallTypes.CurrentCall, action: roduxCallTypes.UpdateCallAction)
			local call = action.payload.call
			return CallStateModel.format(call)
		end,
	} :: {
		[string]: (roduxCallTypes.CurrentCall, any) -> roduxCallTypes.CurrentCall,
	})
end
