local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash

return Roact.createContext({
	fireAnalyticsEvent = Dash.noop,
})
