--[[
	Workaround for a Roact Navigation state update race condition.
	Shamelessly and temporarily stolen from Avatar :)
	Warning removed to pass lest
]]
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Packages = FriendsLanding.Parent
local RoactNavigation = require(Packages.RoactNavigation)

--[[
	Returns the latest version of this navigation prop if a newer one exists.

	This is done by looking this navigation up by child key in the parent
	(which may contain a newer version).
]]
local function getUpdatedNavigation(navigation)
	local parent = navigation._dangerouslyGetParent()
	return parent and navigation.state and navigation.state.key and parent.getChildNavigation(navigation.state.key)
		or navigation
end

--[[
	Returns the active child navigation options after ensuring that we have
	an up-to-date navigation prop.

	There is a race condition in Roact Navigation state updates that potentially
	allows components to rerender with a stale copy of their navigation prop.
	Calling getActiveChildNavigationOptions could lead to an exception if the
	previously active child was just removed.
]]
return function(navigation)
	local updatedNavigation = getUpdatedNavigation(navigation)
	return RoactNavigation.getActiveChildNavigationOptions(updatedNavigation)
end
