local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local LocalizedKeys = require(FriendsLanding.Enums.LocalizedKeys)

local HeaderBarRightView = require(FriendsLanding.Components.HeaderBarRightView)
local HeaderBarCenterView = require(FriendsLanding.Components.HeaderBarCenterView)

return function(navProps)
	return {
		headerText = {
			raw = LocalizedKeys.FriendsHeader.rawValue(),
			shouldLocalize = true,
		},
		shouldExitNavigation = false,
		tabBarVisible = false,
		renderRight = function()
			return Roact.createElement(HeaderBarRightView, navProps)
		end,
		renderCenter = function()
			return Roact.createElement(HeaderBarCenterView, navProps)
		end,
	}
end
