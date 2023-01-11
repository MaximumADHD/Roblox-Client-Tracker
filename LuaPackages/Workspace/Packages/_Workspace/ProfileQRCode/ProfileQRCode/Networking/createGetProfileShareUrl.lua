local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Http = require(Packages.Http)

return function(roduxNetworking)
	return roduxNetworking.GET(script, function(requestBuilder)
		return requestBuilder(Http.Url.APIS_URL):path("sharelinks"):path("v1"):path("get-or-create-link"):queryArgs({
			linkType = "Profile",
		})
	end)
end
