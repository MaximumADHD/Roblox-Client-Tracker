local networkingPresenceTypes = require(script.networkingPresenceTypes)
local createRequestThunks = require(script.createRequestThunks)

local NetworkingPresence: { config: (config: networkingPresenceTypes.Config) -> networkingPresenceTypes.RequestThunks } =
	{
		config = createRequestThunks,
	}

return NetworkingPresence
