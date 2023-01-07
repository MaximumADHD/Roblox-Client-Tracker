local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local EnumScreens = require(FriendsLanding.EnumScreens)
local RoactNavigation = dependencies.RoactNavigation
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local noFriends = getBaseTestStates().noFriends

local FriendsLandingEntryPoint = require(script.Parent)

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	self.baseStore = Rodux.Store.new(function()
		return noFriends
	end, {}, { Rodux.thunkMiddleware })

	self.navigateToLuaAppPages = {
		[EnumScreens.FriendFinder] = function()
			warn("Navigating to FriendFinder")
		end,
	}

	self.androidBackButtonNavigationHandler = function(navigation)
		return Roact.createElement("Frame")
	end
end

function Story:render()
	local navigationAppContainer = RoactNavigation.createAppContainer(FriendsLandingEntryPoint)

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = self.props.store or self.baseStore,
	}, {
		Roact.createElement(navigationAppContainer, {
			exitFriendsLanding = self.props.navigateBackInAppRoute or self.navigateBackInAppRoute,
			navigateToLuaAppPages = self.props.navigateToLuaAppPages or self.navigateToLuaAppPages,
			renderAndroidBackButtonNavigationHandler = self.androidBackButtonNavigationHandler,
		}),
	})
end

return Story
