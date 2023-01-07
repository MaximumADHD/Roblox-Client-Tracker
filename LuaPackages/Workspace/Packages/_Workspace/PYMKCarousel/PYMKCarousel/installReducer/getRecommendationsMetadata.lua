local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

local getRecommendationsMetadata = function(pagecontent, PYMKContentType: string)
	return getDeepValue(pagecontent, string.format("metadata.%s", PYMKContentType)) or {}
end

return getRecommendationsMetadata
