local Plugin = script.Parent.Parent.Parent.Parent
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)
local Http = require(Plugin.Packages.Http)
local StudioService = game:GetService("StudioService")
local LoadLanguages = require(Plugin.Src.Actions.LoadLanguages)

local studioLocaleId = StudioService["StudioLocaleId"]
local SUBDOMAIN = "locale"
local PATH = "v1/locales?displayValueLocale=" .. studioLocaleId

local url = UrlConstructor.BuildUrl(SUBDOMAIN, PATH)

return function(networkingImpl)
	return function(store)
		local httpPromise = networkingImpl:get(url)
		local retryPromise = networkingImpl:handleRetry(httpPromise)
		networkingImpl.parseJson(retryPromise):andThen(function(result)
			if result.responseCode == Http.StatusCodes.OK then
				store:dispatch(LoadLanguages(result.responseBody.data))
			else
				warn("Player Emulator can't get language list: HTTP error "..tostring(result.responseCode))
			end
		end, function(err)
			warn("Player Emulator can't get languages list: " .. err)
		end)
	end
end