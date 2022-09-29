local networkRequests = script.Parent.networkRequests

local createGetExperiencesPlayabilityStatus = require(networkRequests.createGetExperiencesPlayabilityStatus)
local createGetExperiencesProductInfo = require(networkRequests.createGetExperiencesProductInfo)
local createGetExperiencesDetails = require(networkRequests.createGetExperiencesDetails)

return function(config)
	return {
		GetExperiencesPlayabilityStatus = createGetExperiencesPlayabilityStatus(config),
		GetExperiencesProductInfo = createGetExperiencesProductInfo(config),
		GetExperiencesDetails = createGetExperiencesDetails(config),
	}
end
