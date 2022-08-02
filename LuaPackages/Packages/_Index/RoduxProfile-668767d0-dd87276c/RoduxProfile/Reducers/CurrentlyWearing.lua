--[[
	Reducer for currently wearing items by user ID
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)

export type State = {
	-- maps user ID to list of asset IDs that user is currently wearing
	[string]: {string},
}

--[[
	Function to configure and return the CurrentlyWearing reducer

	@param options - Configuration options for the reducer
				.networkingCurrentlyWearing - The CurrentlyWearing networking instance
]]
return function(options)
	local NetworkingCurrentlyWearing = options.networkingCurrentlyWearing

	return Rodux.createReducer({}, {
		[NetworkingCurrentlyWearing.GetCurrentlyWearing.Succeeded.name] = function(state, action)
			local userId = tostring(action.namedIds.users)
			return Dash.join(state, {
				[userId] = Dash.map(action.responseBody.assetIds, tostring)
			})
		end,
	})
end
