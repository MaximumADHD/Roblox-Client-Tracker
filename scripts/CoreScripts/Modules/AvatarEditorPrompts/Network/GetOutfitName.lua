--!nonstrict
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules

local httpRequest = require(CorePackages.AppTempCommon.Temp.httpRequest)
local Url = require(CorePackages.Workspace.Packages.Http).Url
local GetFFlagUseColor3sForBodyParts = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUseColor3sForBodyParts

local httpImpl = httpRequest(HttpRbxApiService)

return function(outfitId)
	local url
	if GetFFlagUseColor3sForBodyParts() then
		url = string.format("%s/v3/outfits/%s/details", Url.AVATAR_URL, tostring(outfitId))
	else
		url = string.format("%s/v1/outfits/%s/details", Url.AVATAR_URL, tostring(outfitId))
	end

	return httpImpl(url, "GET"):andThen(function(result)
		local data = result.responseBody

		return data.name
	end)
end
