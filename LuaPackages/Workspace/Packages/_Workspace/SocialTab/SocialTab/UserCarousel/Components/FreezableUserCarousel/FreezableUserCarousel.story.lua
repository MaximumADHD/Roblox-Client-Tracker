local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Mock = dependencies.Mock

local FreezableUserCarousel = require(script.Parent)

return function()
	return Roact.createElement(FreezableUserCarousel, {
		analytics = Mock.MagicMock.new(),
	})
end
