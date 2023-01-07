local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local HeaderBarRightView = require(script.Parent)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
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
				friendRequestCount = 0,
				totalFriendCount = 1,
				navigateToLuaAppPages = props.navigateToLuaAppPages or {},
				getScreenTopBar = function()
					return {}
				end,
				setScreenTopBar = function()
					return {}
				end,
			},
		}, {
			withContext = Roact.createElement(HeaderBarRightView, props),
		}),
	})
end
