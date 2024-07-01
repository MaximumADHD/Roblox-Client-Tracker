local networkRequests = script.Parent.networkRequests

local createGetExperiencesPlayabilityStatus = require(networkRequests.createGetExperiencesPlayabilityStatus)
local createGetExperiencesProductInfo = require(networkRequests.createGetExperiencesProductInfo)
local createGetExperiencesDetails = require(networkRequests.createGetExperiencesDetails)
local createGetExperienceMedia = require(networkRequests.createGetExperienceMedia)

return function(config)
	return {
		GetExperiencesPlayabilityStatus = createGetExperiencesPlayabilityStatus(config),
		GetExperiencesProductInfo = createGetExperiencesProductInfo(config),
		GetExperiencesDetails = createGetExperiencesDetails(config),
		GetExperienceMedia = createGetExperienceMedia(config),
	}
end
