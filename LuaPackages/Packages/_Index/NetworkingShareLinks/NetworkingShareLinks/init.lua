--!strict
local createRequestThunks = require(script.createRequestThunks) :: any
local networkingShareLinkTypes = require(script.networkingShareLinkTypes)

return {
	config = createRequestThunks,
	networkingShareLinkTypes = networkingShareLinkTypes,
}
