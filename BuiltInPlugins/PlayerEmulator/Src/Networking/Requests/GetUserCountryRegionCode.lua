local Plugin = script.Parent.Parent.Parent.Parent
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)
local Http = require(Plugin.Packages.Http)
local PlayerEmulatorService = game:GetService("PlayerEmulatorService")

local SUBDOMAIN = "api"
local PATH = "users/account-info"

if game:GetFastFlag("PlayerEmulatorMigratedCountryCodeCallEnabled") then
	-- Update subdomain and path to use the migrated enpoint that speicifically
	-- provides the country code
	SUBDOMAIN = "users"
	PATH = "v1/users/authenticated/country-code"
end


local url = UrlConstructor.BuildUrl(SUBDOMAIN, PATH)

return function(networkingImpl)
	return function(_)
		local httpPromise = networkingImpl:get(url)
		local retryPromise = networkingImpl:handleRetry(httpPromise)
		networkingImpl.parseJson(retryPromise):andThen(function(result)
			if result.responseCode == Http.StatusCodes.OK then
				if game:GetFastFlag("PlayerEmulatorMigratedCountryCodeCallEnabled") then
					-- New endpoint saves the code with lowercase property name
					PlayerEmulatorService.EmulatedCountryCode = result.responseBody.countryCode
				else
					PlayerEmulatorService.EmulatedCountryCode = result.responseBody.CountryCode
				end
			else
				warn("Player Emulator can't get country region list: HTTP error "..tostring(result.responseCode))
			end
		end, function(err)
			warn("Player Emulator can't get country region list: " .. err)
		end)
	end
end
