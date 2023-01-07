local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash

return Roact.createContext({
	fireEvent = Dash.noop,
})
