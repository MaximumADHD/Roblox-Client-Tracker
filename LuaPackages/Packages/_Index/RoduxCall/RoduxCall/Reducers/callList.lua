local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux)
local CallModel = require(RoduxCall.Models).CallModel

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CallList = {}

return function(options)
	local NetworkingCall = options.NetworkingCall

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingCall.GetCallList.Succeeded.name] = function(
			_: roduxCallTypes.CallList,
			action: roduxCallTypes.GetCallListSucceeded
		)
			local callList = action.responseBody.callList

			local callModelList = {}
			for _, call in ipairs(callList) do
				callModelList[#callModelList + 1] = CallModel.format(call)
			end

			return callModelList
		end,
	})
end
