local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local FriendsLandingContainer = require(script.Parent)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local filterStates = require(FriendsLanding.Friends.filterStates)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local noFriends = getBaseTestStates().noFriends

local BASE_STORE = Rodux.Store.new(function()
	return noFriends
end, {}, { Rodux.thunkMiddleware })

return function(props)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = props.store or BASE_STORE,
	}, {
		container = Roact.createElement(FriendsLandingContext.Provider, {
			value = {
				filter = filterStates.All,
			},
		}, {
			withContext = Roact.createElement(FriendsLandingContainer),
		}),
	})
end
