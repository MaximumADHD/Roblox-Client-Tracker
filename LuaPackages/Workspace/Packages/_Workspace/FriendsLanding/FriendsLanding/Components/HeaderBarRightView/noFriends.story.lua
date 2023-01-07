local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local FriendsLandingContainer = require(script.Parent)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)

local Story = Roact.PureComponent:extend("Story")

function Story:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 100, 0, 300),
		BackgroundTransparency = 1,
	}, {
		Roact.createElement(FriendsLandingContext.Provider, {
			value = {
				friendRequestCount = 0,
				totalFriendCount = 0,
				getScreenTopBar = function()
					return {}
				end,
			},
		}, {
			withContext = Roact.createElement(FriendsLandingContainer, self.props),
		}),
	})
end

return Story
