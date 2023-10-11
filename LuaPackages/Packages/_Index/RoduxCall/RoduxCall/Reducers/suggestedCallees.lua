local RoduxCall = script:FindFirstAncestor("RoduxCall")
local Root = RoduxCall.Parent
local Rodux = require(Root.Rodux) :: any
local SuggestedCalleeModel = require(RoduxCall.Models).SuggestedCalleeModel :: any

local roduxCallTypes = require(script.Parent.Parent.roduxCallTypes)

local DEFAULT_STATE: roduxCallTypes.GetSuggestedCallees = { suggestedCallees = {} }

return function(options)
	local NetworkingCall = options.NetworkingCall
	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingCall.GetSuggestedCallees.Succeeded.name] = function(
			state: roduxCallTypes.GetSuggestedCallees,
			action: roduxCallTypes.GetSuggestedCalleesSucceeded
		)
			local suggestedCallees = action.responseBody.suggestedCallees

			local suggestedCalleesResult = {}
			for _, suggestedCallee in ipairs(suggestedCallees) do
				assert(SuggestedCalleeModel.isValid(suggestedCallee))
				local callee = SuggestedCalleeModel.format(suggestedCallee)
				suggestedCalleesResult[#suggestedCalleesResult + 1] = callee
			end

			return { suggestedCallees = suggestedCalleesResult }
		end,
	})
end
