local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Promise = Util.Promise
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local BASE_URL = ContentProvider.BaseUrl
if BASE_URL:find("https://www.") then
	BASE_URL = BASE_URL:sub(13)
elseif BASE_URL:find("http://www.") then
	BASE_URL = BASE_URL:sub(12)
end

local function applyParamsToUrl(requestInfo)
	local params = requestInfo.Params
	requestInfo.Params = nil -- HttpRbxApiService doesn't know what this is, so remove it before we give it requestInfo

	if params then
		local paramList = {}

		for paramName, paramValue in pairs(params) do
			local paramPair = HttpService:UrlEncode(paramName) .. "=" .. HttpService:UrlEncode(paramValue)
			table.insert(paramList, paramPair)
		end

		requestInfo.Url = requestInfo.Url .. "?" .. table.concat(paramList, "&")
	end
end

local Http = {}

function Http.BuildRobloxUrl(front, back, ...)
	return "https://" .. front .. "." .. BASE_URL .. (string.format(back, ...) or "")
end

function Http.Request(requestInfo)
	applyParamsToUrl(requestInfo)

	return Promise.new(function(resolve, reject)
		-- Prevent yielding
		spawn(function()
			local ok, result = pcall(HttpRbxApiService.RequestAsync, HttpRbxApiService, requestInfo)

			if ok then
				resolve(result)
			else
				reject(result)
			end
		end)
	end)
end

function Http.RequestInternal(requestInfo)
	applyParamsToUrl(requestInfo)

	return Promise.new(function(resolve, reject)
		-- Prevent yielding
		spawn(function()
			HttpService:RequestInternal(requestInfo):Start(function(success, response)
				if success then
					if response.StatusCode >= DEPRECATED_Constants.BAD_REQUEST then
						reject("HTTP error: " .. tostring(response.StatusCode))
					else
						resolve(response.Body)
					end
				else
					reject("HTTP error: " .. tostring(response.HttpError))
				end
			end)
		end)
	end)
end

return Http
