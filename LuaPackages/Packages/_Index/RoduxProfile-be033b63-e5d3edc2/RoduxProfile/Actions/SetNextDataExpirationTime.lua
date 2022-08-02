--[[
	Action for setting the next expiration time for a given data item (identified by string key)
]]

local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)

export type Type = {
	key: string,
	nextDataExpirationTime: number,
}

return Rodux.makeActionCreator("Profile." .. script.Name, function(key: string, nextDataExpirationTime: number): Type
	assert(type(key) == "string", "SetNextDataExpirationTime action expects key to be a string")
	assert(type(nextDataExpirationTime) == "number" and nextDataExpirationTime > 0,
		"SetNextDataExpirationTime: nextDataExpirationTime must be a positive number!")

	return {
		key = key,
		nextDataExpirationTime = nextDataExpirationTime,
	}
end)
