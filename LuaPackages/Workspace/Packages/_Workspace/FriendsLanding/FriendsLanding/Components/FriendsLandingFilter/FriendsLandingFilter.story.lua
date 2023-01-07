local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local RoactNavigation = dependencies.RoactNavigation
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local filterStates = require(FriendsLanding.Friends.filterStates)

local FriendsLandingFilter = require(script.Parent)

local SimpleNavigator = RoactNavigation.createRobloxStackNavigator({
	{
		["TestScreen"] = {
			screen = function()
				return nil
			end,
		},
	},
})
local FriendsLandingFilterStory = Roact.Component:extend("FriendsLandingFilterStory")
FriendsLandingFilterStory.router = SimpleNavigator.router

function FriendsLandingFilterStory:init() end

function FriendsLandingFilterStory:render()
	return Roact.createElement(FriendsLandingFilter, {
		navigation = {
			getParam = function()
				return filterStates.All
			end,
		},
	})
end

return function(props)
	local navigationAppContainer = RoactNavigation.createAppContainer(FriendsLandingFilterStory)
	return Roact.createElement(FriendsLandingContext.Provider, {
		value = {
			screenSize = props.screenSize or Vector2.new(512, 512),
		},
	}, {
		navigationAppContainer = Roact.createElement(navigationAppContainer),
	})
end
