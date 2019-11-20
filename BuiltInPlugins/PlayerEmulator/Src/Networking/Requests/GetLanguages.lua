local Plugin = script.Parent.Parent.Parent.Parent
local UrlConstructor = require(Plugin.Src.Networking.UrlConstructor)
local Http = require(Plugin.Packages.Http)
local LoadLanguages = require(Plugin.Src.Actions.LoadLanguages)

local SUBDOMAIN = "locale"
local PARAMS = "v1/locales"

local url = UrlConstructor.BuildUrl(SUBDOMAIN, PARAMS)

return function(networkingImpl)
	return function(store)
		local httpPromise = networkingImpl:get(url)
		local retryPromise = networkingImpl:handleRetry(httpPromise)
		networkingImpl.parseJson(retryPromise):andThen(function(result)
			if result.responseCode < Http.StatusCodes.BAD_REQUEST and result.responseBody then
				store:dispatch(LoadLanguages(result.responseBody.data))
			else
				warn("Player Emulator can't get language list: HTTP error "..tostring(result.responseCode))
			end
		end, function(err)
			warn("Player Emulator can't get languages list: " .. err)
		end)
	end
end