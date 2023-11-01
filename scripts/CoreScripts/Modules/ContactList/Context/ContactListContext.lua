local CorePackages = game:GetService("CorePackages")

local Dash = require(CorePackages.Packages.Dash)
local React = require(CorePackages.Packages.React)

return React.createContext({
	fireAnalyticsEvent = Dash.noop,
})
