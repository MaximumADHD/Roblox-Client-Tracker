local Plugin = script.Parent.Parent.Parent.Parent
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)
local Http = require(Plugin.Packages.Http)
local LoadCountryRegion = require(Plugin.Src.Actions.LoadCountryRegion)

local SUBDOMAIN = "locale"
local PATH = "v1/country-regions"

local url = UrlConstructor.BuildUrl(SUBDOMAIN, PATH)

return function(networkingImpl)
	return function(store)
		local httpPromise = networkingImpl:get(url)
		local retryPromise = networkingImpl:handleRetry(httpPromise)
		networkingImpl.parseJson(retryPromise):andThen(function(result)
			if result.responseCode < Http.StatusCodes.BAD_REQUEST and result.responseBody then
				store:dispatch(LoadCountryRegion(result.responseBody.data))
			else
				warn("Player Emulator can't get country region list: HTTP error "..tostring(result.responseCode))
			end
		end, function(err)
			warn("Player Emulator can't get country region list: " .. err)
		end)
	end
end