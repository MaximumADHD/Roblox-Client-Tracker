--[[
	The NetworkingCurrentlyWearing package API.
]]

local networkRequests = script.networkRequests
local createGetCurrentlyWearing = require(networkRequests.createGetCurrentlyWearing)
local createGetItemDetails = require(networkRequests.createGetItemDetails)

local function createRequestThunks(config)
	return {
		GetCurrentlyWearing = createGetCurrentlyWearing(config),
		GetItemDetails = createGetItemDetails(config),
	}
end

return {
	config = createRequestThunks,
}
