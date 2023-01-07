local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local React = dependencies.React
local Context = require(script.Parent.FriendsCarouselAnalyticsContext)

local useAnalytics = function(): { fireEvent: (name: any, additionalArgs: any?) -> () }
	return React.useContext(Context)
end

return useAnalytics
