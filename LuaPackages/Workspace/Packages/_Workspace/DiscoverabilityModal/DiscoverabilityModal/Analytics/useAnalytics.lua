local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local React = dependencies.React
local Context = require(script.Parent.DiscoverabilityModalAnalyticsContext)

local useAnalytics = function(): { fireAnalyticsEvent: (name: any, additionalArgs: any?) -> () }
	return React.useContext(Context)
end

return useAnalytics
