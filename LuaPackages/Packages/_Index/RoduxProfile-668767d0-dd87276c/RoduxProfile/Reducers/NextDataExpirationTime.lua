--[[
	Reducer that maps string keys to the next data expiration time in seconds.
]]

local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Dash = require(Packages.Dash)
local Rodux = require(Packages.Rodux)
local SetNextDataExpirationTime = require(script.Parent.Parent.Actions.SetNextDataExpirationTime)

export type State = {
	-- maps string keys to next expiration time in seconds (to be compared with tick())
	[string]: number,
}

return Rodux.createReducer({}, {
	[SetNextDataExpirationTime.name] = function(state, action: SetNextDataExpirationTime.Type)
		return Dash.join(state, {
			[action.key] = action.nextDataExpirationTime,
		})
	end,
})
