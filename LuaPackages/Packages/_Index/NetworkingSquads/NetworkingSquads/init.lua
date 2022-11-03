--!strict
local createRequestThunks = require(script.createRequestThunks) :: any
local networkingSquadTypes = require(script.networkingSquadTypes)

return {
	config = createRequestThunks,
	networkingSquadTypes = networkingSquadTypes,
}
