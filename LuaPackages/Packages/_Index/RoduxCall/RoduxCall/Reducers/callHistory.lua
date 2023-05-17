local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local CallRecordModel = require(RoduxCall.Models).CallRecordModel :: any
local ClearCallRecords = require(RoduxCall.Actions).ClearCallRecords :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CallHistory = { callRecords = {}, nextPageCursor = "", previousPageCursor = "" }

return function(options)
	local NetworkingCall = options.NetworkingCall

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingCall.GetCallHistory.Succeeded.name] = function(
			_: roduxCallTypes.CallHistory,
			action: roduxCallTypes.GetCallHistorySucceeded
		)
			local callHistory: roduxCallTypes.CallHistory =
				{ callRecords = {}, nextPageCursor = "", previousPageCursor = "" }
			local callRecords = action.responseBody.callRecords

			local callRecordModelList = {}
			for _, call in ipairs(callRecords) do
				callRecordModelList[#callRecordModelList + 1] = CallRecordModel.format(call)
			end

			callHistory.nextPageCursor = action.responseBody.nextPageCursor
			callHistory.previousPageCursor = action.responseBody.previousPageCursor
			callHistory.callRecords = callRecordModelList

			return callHistory
		end,

		[ClearCallRecords.name] = function(_: roduxCallTypes.CallHistory, _)
			return DEFAULT_STATE
		end,
	})
end
