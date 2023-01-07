local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash

return Roact.createContext({
	fireEvent = Dash.noop,
})
