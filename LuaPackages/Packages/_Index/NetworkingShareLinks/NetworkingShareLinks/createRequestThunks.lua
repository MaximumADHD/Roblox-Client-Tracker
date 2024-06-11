--!strict
local networkingShareLinkTypes = require(script.Parent.networkingShareLinkTypes)

local networkRequests: any = script.Parent.networkRequests
local createGenerateLink: (any) -> any = require(networkRequests.createGenerateLink)
local createGetOrGenerateLink: (any) -> any = require(networkRequests.createGetOrGenerateLink)
local createResolveLinkFromLinkId: (any) -> any = require(networkRequests.createResolveLinkFromLinkId)

return function(config: networkingShareLinkTypes.Config): networkingShareLinkTypes.RequestThunks
	return {
		ResolveLinkFromLinkId = createResolveLinkFromLinkId(config),
		GenerateLink = createGenerateLink(config),
		GetOrGenerateLink = createGetOrGenerateLink(config),
	}
end
