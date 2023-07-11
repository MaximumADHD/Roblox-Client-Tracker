--!strict

--[[
	APIUtil.lua exposes utility functions to help call back-end APIs
]]

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local ContentProvider = game:GetService("ContentProvider")

local APIUtil = {}

function APIUtil.getBaseDomain()
	local baseUrl = ContentProvider.BaseUrl
	if string.sub(baseUrl, #baseUrl) ~= "/" then
		baseUrl = baseUrl .. "/"
	end
	local _, schemeEnd = string.find(baseUrl, "://")
	local _, prefixEnd = string.find(baseUrl, "%.", schemeEnd :: number + 1)
	return string.sub(baseUrl, prefixEnd :: number + 1)
end

local MAX_RETRIES = 2
local function requestAndRetry(func: () -> any, attempt: number?)
	if attempt == nil then
		attempt = 0
	end

	local success, response = pcall(func)

	if success then
		return true, response
	elseif attempt :: number >= MAX_RETRIES then
		return false, response
	else
		local timeToWait = 2 ^ (attempt :: number - 1)
		wait(timeToWait)
		return requestAndRetry(func, attempt :: number + 1)
	end
end

function APIUtil.requestAndRetryPost(apiUrl, data)
	return requestAndRetry(function()
		return HttpRbxApiService:PostAsyncFullUrl(apiUrl, data)
	end)
end

function APIUtil.requestAndRetryGet(apiUrl)
	return requestAndRetry(function()
		return HttpRbxApiService:GetAsyncFullUrl(apiUrl)
	end)
end

return APIUtil
