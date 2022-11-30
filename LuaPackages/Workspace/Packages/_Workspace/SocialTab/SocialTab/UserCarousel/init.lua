local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local UserCarouselContainer = require(script.Components.UserCarouselContainer)

return {
	render = function(props)
		return Roact.createElement(UserCarouselContainer, props)
	end,
}
