local Plugin = script.Parent.Parent.Parent.Parent
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)
local Http = require(Plugin.Packages.Http)
local StudioService = game:GetService("StudioService")
local LoadCountryRegion = require(Plugin.Src.Actions.LoadCountryRegion)
local InitCountryRegionSetting = require(Plugin.Src.Thunks.InitCountryRegionSetting)

local studioLocaleId = StudioService["StudioLocaleId"]
local SUBDOMAIN = "locale"
local PATH = "v1/country-regions?locale=" .. studioLocaleId

local url = UrlConstructor.BuildUrl(SUBDOMAIN, PATH)

return function(networkingImpl, plugin)
	return function(store)
		local httpPromise = networkingImpl:get(url)
		local retryPromise = networkingImpl:handleRetry(httpPromise)
		networkingImpl.parseJson(retryPromise):andThen(function(result)
			if result.responseCode == Http.StatusCodes.OK then
				store:dispatch(LoadCountryRegion(result.responseBody.countryRegionList))
				store:dispatch(InitCountryRegionSetting(networkingImpl, plugin))
			else
				warn("Player Emulator can't get country region list: HTTP error "..tostring(result.responseCode))
			end
		end, function(err)
			warn("Player Emulator can't get country region list: " .. err)
		end)
	end
end