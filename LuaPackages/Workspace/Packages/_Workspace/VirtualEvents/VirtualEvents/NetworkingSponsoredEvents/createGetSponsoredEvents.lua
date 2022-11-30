local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Http = require(VirtualEvents.Parent.Http)

return function(roduxNetworking)
	local GetSponsoredEvents = roduxNetworking.GET(script, function(requestBuilder)
		return requestBuilder(Http.Url.ADS_URL):path("v1"):path("sponsored-pages")
	end)

	return GetSponsoredEvents
end
