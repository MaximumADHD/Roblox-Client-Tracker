local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local CallModel = require(RoduxCall.Models).CallModel :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CallHistory = {}

return function(options)
	local NetworkingCall = options.NetworkingCall

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingCall.GetCallHistory.Succeeded.name] = function(
			_: roduxCallTypes.CallHistory,
			action: roduxCallTypes.GetCallHistorySucceeded
		)
			local callHistory = action.responseBody.callRecords

			local callModelList = {}
			for _, call in ipairs(callHistory) do
				callModelList[#callModelList + 1] = CallModel.format(call)
			end

			return callModelList
		end,
	})
end
