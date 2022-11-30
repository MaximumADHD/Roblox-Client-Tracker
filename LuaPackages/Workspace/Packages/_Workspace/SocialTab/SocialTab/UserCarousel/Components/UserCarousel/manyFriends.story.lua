local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local UserCarousel = require(script.Parent)
local Roact = dependencies.Roact
local llama = dependencies.llama
local Mock = dependencies.Mock
local UserUtils = require(SocialTab.User)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local friends = {}
for i = 1, 12 do
	table.insert(
		friends,
		UserUtils.makeMockUser({
			id = tostring(i),
			username = "This should not show",
			displayName = "George the " .. i,
			userPresenceType = PresenceType.InGame,
			lastLocation = "Playing this game",
		})
	)
end

return function(props)
	return Roact.createElement(
		UserCarousel,
		llama.Dictionary.join({
			enableDisplayNamePolicy = true,
			friends = friends,
			screenSize = Vector2.new(800, 100),
			analytics = Mock.MagicMock.new(),
		}, props or {})
	)
end
