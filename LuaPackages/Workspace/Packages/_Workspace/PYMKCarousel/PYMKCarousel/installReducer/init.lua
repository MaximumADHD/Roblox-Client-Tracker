local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking
local RoduxAnalytics = require(script.RoduxAnalytics)
local Users = require(script.Users)
local Friends = require(script.Friends)

local OmniTypes = require(PYMKCarousel.Common.OmniTypes)

return function(config: OmniTypes.Config)
	return if (config.contentType and config.treatmentType)
		then Rodux.combineReducers({
			Users = Users(config),
			Friends = Friends(config),
			NetworkStatus = RoduxNetworking.installReducer(),
			Analytics = RoduxAnalytics(config),
		})
		else nil
end
