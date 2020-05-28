local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")

local AvatarWebApi = {}

local BASE_URL = ContentProvider.BaseUrl
for _, word in pairs({"/", "www.", "https:", "http:" }) do
	BASE_URL = string.gsub(BASE_URL, word, "")
end

local AVATAR_URL = "https://avatar." ..BASE_URL

AvatarWebApi.Status = {
	PENDING = 0,
	UNKNOWN_ERROR = -1,
	NO_CONNECTIVITY = -2,
	INVALID_JSON = -3,
	BAD_TLS = -4,
	MODERATED = -5,

	OK = 200,
	BAD_REQUEST = 400,
	UNAUTHORIZED = 401,
	FORBIDDEN = 403,
	NOT_FOUND = 404,
	REQUEST_TIMEOUT = 408,
	INTERNAL_SERVER_ERROR = 500,
	NOT_IMPLEMENTED = 501,
	BAD_GATEWAY = 502,
	SERVICE_UNAVAILABLE = 503,
	GATEWAY_TIMEOUT = 504,
}

local jsonDecode = nil
local httpGet = nil
local getHttpStatus = nil
local httpGetJson = nil
local getData = nil

function AvatarWebApi.GetAvatarData()
	local status, result = getData("/v1/avatar")
	return status, result
end

if not game:GetFastFlag("GameSettingsNetworkRefactor") then
	function AvatarWebApi.GetAvatarRulesData()
		local status, result = getData("/v1/avatar-rules")
		return status, result
	end
end

getData = function(endPoint)
	local url = AVATAR_URL .. endPoint

	local result, status = httpGetJson(url)

	return status, result
end

jsonDecode = function(data)
	return HttpService:JSONDecode(data)
end

httpGet = function(url)
	return game:HttpGetAsync(url)
end

getHttpStatus = function(response)
	for _, code in pairs(AvatarWebApi.Status) do
		if code >= 100 and response:find(tostring(code)) then
			return code
		end
	end

	if response:find("2%d%d") then
		return AvatarWebApi.Status.OK
	end

	if response:find("curl_easy_perform") and response:find("SSL") then
		return AvatarWebApi.Status.BAD_TLS
	end

	return AvatarWebApi.Status.UNKNOWN_ERROR
end

httpGetJson = function(url)
	local success, response = pcall(httpGet, url)
	local status = success and AvatarWebApi.Status.OK or getHttpStatus(response)

	if success then
		success, response = pcall(jsonDecode, response)
		status = success and status or AvatarWebApi.Status.INVALID_JSON
	end

	return response, status
end

return AvatarWebApi
