local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local UserCarouselHeader = require(script.Parent)
local Roact = dependencies.Roact

return function()
	return Roact.createElement(UserCarouselHeader, {
		friendCount = 5,
		hasFriendRequests = true,
	})
end
