local NetworkingVirtualEvents = script:FindFirstAncestor("NetworkingVirtualEvents")

local Util = require(NetworkingVirtualEvents.Parent.Util)

return {
	API_URL = Util.buildApiSiteUrl("apis"),
}
