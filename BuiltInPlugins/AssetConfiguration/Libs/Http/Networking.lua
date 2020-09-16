--[[
	Networking

	Provides a re-usable implementation for network requests and other utilities
]]--
local Plugin = script.Parent.Parent.Parent
local Promise = require(Plugin.Libs.Framework.Util.Promise)
local HttpResponse = require(script.Parent.HttpResponse)
local StatusCodes = require(script.Parent.StatusCodes)

local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

-- helper functions
local function getHttpStatus(response)
	-- NOTE, this function expects to parse a response like this:
	-- HTTP 404 (HTTP/1.1 404 Not Found)

	for _, code in pairs(StatusCodes) do
		if code >= 100 and response:find(tostring(code)) then
			return code
		end
	end

	if response:find("2%d%d") then
		return StatusCodes.OK
	end

	if response:find("curl_easy_perform") and response:find("SSL") then
		return StatusCodes.BAD_TLS
	end

	return StatusCodes.UNKNOWN_ERROR
end


-- requestType : (string) "GET", "POST", "DELETE"
-- httpAction : (function) a function that wraps the httpRequest
-- RETURNS : (HttpResponse) object containing information about the request
local function baseHttpHandler(requestType, url, httpAction)
	-- this function handles the actual network request and any and all additional
	-- business logic around the request.

	-- time how long the request takes to complete
	local startTime = tick()

	-- fetch the raw response from the server
	-- NOTE - this pcall will prevent the server from throwing errors on a 404 or other server problem
	local success, responseString = pcall(httpAction)
	local endTime = tick()

	-- package information about the response into a single object
	local responseTimeMs = (endTime - startTime) * 1000
	local statusCode = StatusCodes.OK
	if not success then
		statusCode = getHttpStatus(responseString)
	end

	return HttpResponse.new(responseString, responseTimeMs, statusCode, requestType, url)
end

-- httpImpl : (Service) an object that defines HttpGetAsync
-- url : (string)
local function httpGet(httpImpl, url)
	return baseHttpHandler("GET", url, function()
		return httpImpl:GetAsyncFullUrl(url)
	end)
end

-- httpImpl : (Service) an object that defines HttpPostAsync
-- url : (string)
-- payload : (string)
-- contentType : (string)
local function httpPost(httpImpl, url, payload, contentType)
	if not contentType then
		contentType = Enum.HttpContentType.ApplicationJson
	end

	return baseHttpHandler("POST", url, function()
		return httpImpl:PostAsyncFullUrl(url, payload, Enum.ThrottlingPriority.Default, contentType)
	end)
end

-- httpImpl : (Service) an object that defines HttpPostAsync
-- url : (string)
-- options : (table)
local function httpDelete(httpImpl, options)
	return baseHttpHandler("DELETE", options, function()
		return httpImpl:RequestAsync(options)
	end)
end

local function httpPatch(httpImpl, options)
	return baseHttpHandler("PATCH", options, function()
		return httpImpl:RequestAsync(options)
	end)
end

local function httpPut(httpImpl, options)
	return baseHttpHandler("PUT", options, function()
		return httpImpl:RequestAsync(options)
	end)
end

-- httpFunc : (function) one of the http functions defined above, like httpGet, or httpPost
-- ... : arguments to pass into the httpFunc
local function createHttpPromise(httpFunc, ...)
	-- make a promise to track the progress of a network request
	local args = {...}
	local httpPromise = Promise.new(function(resolve, reject)
		-- begin fetching the response from the server
		-- NOTE - the http function will yield the thread, so spawn a new one
		spawn(function()
			local httpResponse = httpFunc(unpack(args))
			if httpResponse.responseCode == StatusCodes.OK then
				resolve(httpResponse)
			else
				reject(httpResponse)
			end
		end)
	end)

	-- return the promise so people can patiently wait
	return httpPromise
end

-- TO DO:
-- add logic for RetryGet and RetryPost to automatically poll an endpoint for a proper response



-- public api
local Networking = {}
Networking.__index = Networking

function Networking.new()
	-- _httpImpl - (Service) something that implements HttpGetAsync, and HttpPostAsync
	local networkObj = {
		_httpImpl = HttpRbxApiService
	}
	setmetatable(networkObj, Networking)

	return networkObj
end

-- Response parsing utility functions
function Networking:jsonEncode(data)
	return HttpService:JSONEncode(data)
end

function Networking:jsonDecode(data)
	return HttpService:JSONDecode(data)
end

-- Http request functions

-- url : (string)
-- returns a Promise that resolves to an HttpResponse object
function Networking:httpGetJson(url)
	return createHttpPromise(httpGet, self._httpImpl, url):andThen(
		-- On promise resolved
		function(result)
			result.responseBody = self:jsonDecode(result.responseBody)
			return result
		end)
end

-- url : (string)
-- payload : (string)
-- returns a Promise that resolves to an HttpResponse object
function Networking:httpPostJson(url, payload)
	return createHttpPromise(httpPost, self._httpImpl, url, payload):andThen(
		function(result)
			result.responseBody = self:jsonDecode(result.responseBody)
			return result
		end)
end

-- url : (string)
-- payload : (string)
-- returns a Promise that resolves to an HttpResponse object
function Networking:httpPost(url, payload)
	return createHttpPromise(httpPost, self._httpImpl, url, payload)
end

-- url : (string)
function Networking:httpGet(url)
	return createHttpPromise(httpGet, self._httpImpl, url)
end

-- url : (string)
function Networking:httpDelete(url)
	local options = {
		Url = url,
		Method = "DELETE",
	}

	return createHttpPromise(httpDelete, self._httpImpl, options)
end

function Networking:httpPatch(url, payload)
	local options = {
		Url = url,
		Method = "PATCH",
		Body = payload,
		Headers = {
			["Content-Type"] = "application/json",
		},
	}

	return createHttpPromise(httpPatch, self._httpImpl, options)
end

function Networking:httpPut(url, payload)
	local options = {
		Url = url,
		Method = "PUT",
		Body = payload,
		Headers = {
			["Content-Type"] = "application/json",
		},
	}

	return createHttpPromise(httpPut, self._httpImpl, options)
end

function Networking:requestInternal(requestInfo)
	return Promise.new(function(resolve, reject)
		-- Prevent yielding
		spawn(function()
			HttpService:RequestInternal(requestInfo):Start(function(success, response)
				if success then
					if response.StatusCode >= StatusCodes.BAD_REQUEST then
						reject("HTTP error: "..tostring(response.StatusCode))
					else
						resolve(response.Body)
					end
				else
					reject("HTTP error: "..tostring(response.HttpError))
				end
			end)
		end)
	end)
end

return Networking
