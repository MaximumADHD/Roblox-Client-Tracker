local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local React = dependencies.React
local Context = require(script.Parent.PYMKCarouselAnalyticsContext)

local useAnalytics = function(): { fireEvent: (name: any, additionalArgs: any?) -> () }
	return React.useContext(Context)
end

return useAnalytics
