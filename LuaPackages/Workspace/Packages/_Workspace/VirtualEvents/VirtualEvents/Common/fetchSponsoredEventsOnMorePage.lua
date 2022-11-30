-- This is a helper function that gets used on the MorePage to display a badge
-- of how many SponsoredEvents are active. We need this function so we can
-- interface with our NetworkingSponsoredEvents instance without having to
-- expose the full thing

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local network = require(VirtualEvents.network)

local function fetchSponsoredEventsOnMorePage()
	return network.NetworkingSponsoredEvents.GetSponsoredEvents.API()
end

return fetchSponsoredEventsOnMorePage
