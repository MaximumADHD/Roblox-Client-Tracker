local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local CallRecordModel = require(RoduxCall.Models).CallRecordModel :: any
local ClearCallRecords = require(RoduxCall.Actions).ClearCallRecords :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.CallHistory = { callRecords = {}, nextPageCursor = "", previousPageCursor = "" }

local mergeLists = function(a, b)
	local result = { table.unpack(a) }
	table.move(b, 1, #b, #result + 1, result)
	return result
end

return function(options)
	local NetworkingCall = options.NetworkingCall

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingCall.GetCallHistory.Succeeded.name] = function(
			state: roduxCallTypes.CallHistory,
			action: roduxCallTypes.GetCallHistorySucceeded
		)
			local callHistory: roduxCallTypes.CallHistory =
				{ callRecords = {}, nextPageCursor = "", previousPageCursor = "" }

			local callRecordModelList = {}
			for _, call in ipairs(action.responseBody.callRecords) do
				callRecordModelList[#callRecordModelList + 1] = CallRecordModel.format(call)
			end

			local cursor = action.queryArgs.cursor
			if cursor then
				if cursor == state.nextPageCursor then
					-- This is a next fetch.
					callHistory.previousPageCursor = state.previousPageCursor
					callHistory.nextPageCursor = action.responseBody.nextPageCursor
					callHistory.callRecords = mergeLists(state.callRecords, callRecordModelList)
				elseif cursor == state.previousPageCursor then
					-- This is a previous fetch.
					callHistory.previousPageCursor = action.responseBody.previousPageCursor
					callHistory.nextPageCursor = state.nextPageCursor
					callHistory.callRecords = mergeLists(callRecordModelList, state.callRecords)
				else
					-- This fetch should not happen.
					assert(false, "Received an unexpected call records request.")
				end
			else
				callHistory.previousPageCursor = action.responseBody.previousPageCursor
				callHistory.nextPageCursor = action.responseBody.nextPageCursor
				callHistory.callRecords = callRecordModelList
			end

			return callHistory
		end,

		[ClearCallRecords.name] = function(_: roduxCallTypes.CallHistory, _)
			return DEFAULT_STATE
		end,
	})
end
