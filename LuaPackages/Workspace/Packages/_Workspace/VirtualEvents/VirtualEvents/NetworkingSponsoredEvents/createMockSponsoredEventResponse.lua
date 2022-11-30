local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local types = require(VirtualEvents.types)

local function createMockSponsoredEventResponse(name: string): types.SponsoredEventResponse
	return {
		name = name,
		title = name,
		pageType = "Sponsored",
		pagePath = "/sponsored/" .. name,
		logoImageUrl = "https://images.rbxcdn.com/ecf1f303830daecfb69f2388c72cb6b8",
	}
end

return createMockSponsoredEventResponse
