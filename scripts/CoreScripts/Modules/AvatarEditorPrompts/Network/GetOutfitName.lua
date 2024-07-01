--!nonstrict
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local httpRequest = require(RobloxGui.Modules.Common.httpRequest)

local Url = require(CorePackages.Workspace.Packages.Http).Url

local httpImpl = httpRequest(HttpRbxApiService)

return function(outfitId)
	local url = string.format("%s/v3/outfits/%s/details", Url.AVATAR_URL, tostring(outfitId))

	return httpImpl(url, "GET"):andThen(function(result)
		local data = result.responseBody

		return data.name
	end)
end
