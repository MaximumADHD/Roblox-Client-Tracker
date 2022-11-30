local createGetSponsoredEvents = require(script.Parent.createGetSponsoredEvents)

return function(config: { roduxNetworking: any })
	return {
		GetSponsoredEvents = createGetSponsoredEvents(config.roduxNetworking),
	}
end
