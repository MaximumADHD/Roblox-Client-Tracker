local Packages = script:FindFirstAncestor("Http").Parent
local SystemInfoProtocol = require(Packages.SystemInfoProtocol).SystemInfoProtocol
local ArgCheck = require(Packages.ArgCheck)
local UrlBuilder = require(Packages.UrlBuilder).UrlBuilder
local Url = require(script.Parent.Parent.Parent.Url)
local HttpService = game:GetService("HttpService")

local GetFFlagLuaAppInfiniteHomePage = require(Packages.SharedFlags).GetFFlagLuaAppInfiniteHomePage

--[[
	This endpoint returns a promise that resolves to:
	{
		"pageType":"string",
		"requestId":"string",
		"sorts":[
			{
				"topic":"string",
				"topicId":0,
				"treatmentType":"string",
				"recommendationList":[
					{
						"contentType":"string",
						"contentId":0
					}
				]
			}
		],
		"sortsRefreshInterval":0,
		"contentMetadata":{
			"Invalid":{},
			"Game":{},
			"Avatar":{},
			"Genre":{},
			"Player":{}
		}
	}
]]

local builder = UrlBuilder.new({
	base = Url.APIS_URL,
	path = "/discovery-api/omni-recommendation",
})

local deviceToParamMap = {
	[SystemInfoProtocol.InfoNames.MANUFACTURER :: string] = "deviceManufacturer",
	[SystemInfoProtocol.InfoNames.BASE_OS :: string] = "operatingSystemVersion",
	[SystemInfoProtocol.InfoNames.IS_64BIT :: string] = "if64Bit",
	[SystemInfoProtocol.InfoNames.CPU_CORE_COUNT :: string] = "cpuCores",
}

-- networkImpl - (function<promise<HttpResponse>>(url, requestMethod, options))
-- pageType - (string/Constants.OmniRecommendationsPageType) which page type to fetch
-- sessionId - a GUID that is used for data analysis, mapped to the event logging HomePage session metadata
-- pageToken - a token that is used for fetching the next page
return function(networkImpl, discoveryPageType, sessionId, nextPageToken)
	local payload = {
		["pageType"] = discoveryPageType,
		["sessionId"] = sessionId,
		["pageToken"] = if GetFFlagLuaAppInfiniteHomePage() then nextPageToken else nil,
	}

	local success, systemInfo = pcall(function()
		return SystemInfoProtocol.default:getSystemInfo(SystemInfoProtocol.ALL_INFO_NAMES)
	end)
	if success and typeof(systemInfo) == "table" then
		for name, value in pairs(systemInfo) do
			local paramName = deviceToParamMap[name] or name
			ArgCheck.assert(
				payload[paramName] == nil,
				"Field '"
					.. tostring(paramName)
					.. "' already exists in omni-recommendation fetch!  Will be overwritten."
			)
			payload[paramName] = value
		end
	end

	local url = builder()
	local encodedPayload = HttpService:JSONEncode(payload)
	return networkImpl(url, "POST", { postBody = encodedPayload })
end
