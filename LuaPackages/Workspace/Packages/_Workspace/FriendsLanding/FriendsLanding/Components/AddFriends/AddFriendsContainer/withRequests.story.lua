local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local getTestStore = require(script.Parent.getTestStore)
local AddFriendsContainer = require(script.Parent)

return function(props)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = getTestStore(true),
	}, {
		Roact.createElement(AddFriendsContainer, props),
	})
end
