local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Http = require(Packages.Http)

local PROFILE_LINK_TYPE = "Profile"

local buildUrl = function(requestBuilder)
	return requestBuilder(Http.Url.APIS_URL .. "sharelinks")
		:path("v1")
		:path("get-or-create-link")
		:body({ linkType = PROFILE_LINK_TYPE })
end

local setupRequest = function(roduxNetworking)
	return roduxNetworking.POST(script, buildUrl)
end

return {
	profileLinkType = PROFILE_LINK_TYPE,
	buildUrl = buildUrl,
	setupRequest = setupRequest,
}
