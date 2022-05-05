--[[
	Reducer that maps user ID to the data status for that profile page fetch.
]]
local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Dash = require(Packages.Dash)
local Rodux = require(Packages.Rodux)
local SetProfilePageDataStatus = require(script.Parent.Parent.Actions.SetProfilePageDataStatus)

export type State = {
	-- maps user ID to RetrievalStatus raw string
	[string]: string,
}

return Rodux.createReducer({}, {
	[SetProfilePageDataStatus.name] = function(state, action)
		return Dash.join(state, {
			[action.userId] = action.status
		})
	end,
})
