--!strict
local createRequestThunks = require(script.createRequestThunks) :: any
local networkingCallTypes = require(script.networkingCallTypes)

return {
	config = createRequestThunks,
	networkingCallTypes = networkingCallTypes,
}
