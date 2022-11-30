local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Mock = dependencies.Mock

local UserCarousel = require(script.Parent)

return function()
	return Roact.createElement(UserCarousel, {
		analytics = Mock.MagicMock.new(),
	})
end
