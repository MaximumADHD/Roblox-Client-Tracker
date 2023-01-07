local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking
local RoduxUserPermissions = dependencies.RoduxUserPermissions

local Users = require(script.Parent.Users)
local Friends = require(script.Parent.Friends)
local Presence = require(script.Parent.Presence)
local RoduxAnalytics = require(script.Parent.RoduxAnalytics)

local ShowContactImporterParams = dependencies.ShowContactImporterParams

return function()
	return Rodux.combineReducers({
		Users = Users,
		Friends = Friends,
		Presence = Presence,
		UserPermissions = RoduxUserPermissions.installReducer(),
		NetworkStatus = RoduxNetworking.installReducer(),
		ShowContactImporterParams = ShowContactImporterParams,
		Analytics = RoduxAnalytics,
	})
end
