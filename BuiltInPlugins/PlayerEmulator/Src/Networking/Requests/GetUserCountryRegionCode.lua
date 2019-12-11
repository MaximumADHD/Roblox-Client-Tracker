local Plugin = script.Parent.Parent.Parent.Parent
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)
local Http = require(Plugin.Packages.Http)
local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local SUBDOMAIN = "api"
local PATH = "users/account-info"

local url = UrlConstructor.BuildUrl(SUBDOMAIN, PATH)

return function(networkingImpl)
	return function(_)
		local httpPromise = networkingImpl:get(url)
		local retryPromise = networkingImpl:handleRetry(httpPromise)
		networkingImpl.parseJson(retryPromise):andThen(function(result)
			if result.responseCode == Http.StatusCodes.OK then
				PlayerEmulatorService.StudioEmulatedCountryRegionCode = result.responseBody.CountryCode
			else
				warn("Player Emulator can't get country region list: HTTP error "..tostring(result.responseCode))
			end
		end, function(err)
			warn("Player Emulator can't get country region list: " .. err)
		end)
	end
end