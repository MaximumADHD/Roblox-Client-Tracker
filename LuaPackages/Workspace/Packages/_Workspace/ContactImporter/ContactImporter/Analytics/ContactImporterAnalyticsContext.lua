local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Roact = dependencies.Roact
local Dash = dependencies.Dash

return Roact.createContext({
	fireAnalyticsEvent = Dash.noop,
})
