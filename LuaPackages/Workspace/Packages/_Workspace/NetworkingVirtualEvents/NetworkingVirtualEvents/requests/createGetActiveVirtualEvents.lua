local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Http = require(NetworkingVirtualEvents.Parent.Http)

type Query = {
	cursor: string?,
	limit: number?,
	reverse: boolean?,
	fromUtc: string?,
}

return function(roduxNetworking)
	local GetActiveVirtualEvents = roduxNetworking.GET(script, function(requestBuilder: any, query: Query?)
		local request =
			requestBuilder(Http.Url.APIS_URL):path("virtual-events"):path("v1"):path("virtual-events"):path("active")

		if query then
			request = request:queryArgs(query)
		end

		return request
	end)

	return GetActiveVirtualEvents
end
