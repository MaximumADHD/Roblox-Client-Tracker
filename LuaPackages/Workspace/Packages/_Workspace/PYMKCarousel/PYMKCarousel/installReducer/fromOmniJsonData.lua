local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local Result = dependencies.Result

--* we don't modify data here, because we do it on AddOmniRecommendations -> Users/Friends adaptors
return function(data)
	return Result.success(data)
end
