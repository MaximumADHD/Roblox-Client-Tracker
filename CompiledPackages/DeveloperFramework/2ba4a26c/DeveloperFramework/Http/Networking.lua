--[[
	Provides a re-usable, Promise-based implementation for network requests and other utilities.

	Optional Props:
		Instance httpImpl: something that implements RequestAsync(options) or RequestInternal(options)
		boolean isInternal: when true, uses RequestInternal instead of RequestAsync
		boolean allowYielding: internal check used by tests to prevent TestEZ from throwing errors
		number loggingLevel: a bitfield from 0 - 7 used when deciding what debug messages to log

	function Networking.new(optional table props):
		Constructs a new Networking object. May be customized with a table of 'props' to configure
		whether to fire requests with elevated permissions, log debug information, and more.

	function Networking.mock(optional table props):
		Constructs a Networking object that never dispatches real network requests, and allows
		faking responses for tests.

	function Networking:request(table options):
		Fires an HTTP request using HttpService, returns a Promise that resolves to an HttpResponse object.

	function Networking:delete(string url, optional table headers):
		A wrapper around request(), fires a DELETE request and returns a Promise.

	function Networking:get(string url, optional table headers):
		A wrapper around request(), fires a GET request and returns a Promise.

	function Networking:patch(string url, string payload, optional table headers):
		A wrapper around request, fires a PATCH request and returns a Promise.

	function Networking:post(string url, string payload, optional table headers):
		A wrapper around request, fires a POST request and returns a Promise.

	function Networking:put(string url, optional table headers):
		A wrapper around request, fires a PUT request and returns a Promise.

	function Networking:parseJson(Promise requestPromise):
		Given a Promise that resolves to an HttpResponse, this function attempts to parse the responseBody
		from a JSON string to a table and replaces the responseBody with the resulting table. Returns a
		Promise that resolves to a modified HttpResponse object where responseBody is a table.

	function Networking:handleRetry(Promise requestPromise, optional number numRetries, optional bool disableBackoff)
		Given a Promise that resolves to an HttpResponse, this function will automatically retry the request if
		the request fails for an unexpected server reason. It will not retry if there was a problem with the request
		itself, or if it was a POST or PATCH (non-idempotent) request.

	Example Usage:
		-- get some information about game universes
		local Networking = require(DevFramework.Http).Networking
		local n = Networking.new()
		n:get("https://games.roblox.com/v1/games?universeIds=123,456"):andThen(function(httpResponse)
			-- handle the response
		end, function(httpErr)
			-- handle any errors from the request
		end)
]]
--

local HttpService = game:GetService("HttpService")

local DevFrameworkRoot = script.Parent.Parent
local Promise = require(DevFrameworkRoot.Util).Promise
local HttpResponse = require(script.Parent.HttpResponse)
local StatusCodes = require(script.Parent.StatusCodes)

export type Props = {
	httpImpl: any?, -- (Service, optional) something that implements RequestAsync(options)
	isInternal: boolean?, -- when true, uses RequestInternal instead of RequestAsync
	loggingLevel: number?, -- a bitwise from 0 - 7 used when deciding what debug messages to log
	allowYielding: boolean?, -- internal check used by tests to prevent TestEZ from throwing errors
}

local LOGGING_CHANNELS = {
	NONE = 0,
	REQUESTS = 1, -- Monitors outgoing request messages
	RESPONSES = 2, -- Monitors incoming response messages
	-- REQUESTS + RESPONSES = 3
	DEBUG = 4, -- Monitors non-specific messages
	-- DEBUG + REQUESTS = 5
	-- DEBUG + RESPONSES = 6
	-- DEBUG + REQUESTS + RESPONSES = 7
	VERBOSE = 7,
}

-- public api
local Networking = {}
Networking.__index = Networking

function Networking.new(props: Props?)
	local propsSafe: Props = props or {}

	local loggingLevel = propsSafe.loggingLevel or LOGGING_CHANNELS.NONE
	assert(type(loggingLevel) == "number", "loggingLevel expected to be a LOGGING_CHANNELS enum")
	assert(
		(loggingLevel >= LOGGING_CHANNELS.NONE) and (loggingLevel <= LOGGING_CHANNELS.VERBOSE),
		"loggingLevel expected to be valid"
	)

	local isInternal = propsSafe.isInternal
	if isInternal == nil then
		isInternal = false
	end
	assert(type(isInternal) == "boolean", "isInternal is expected to be boolean")

	local allowYielding = propsSafe.allowYielding
	if allowYielding == nil then
		allowYielding = true
	end
	assert(type(allowYielding) == "boolean", "allowYielding is expected to be boolean")

	local httpImpl = propsSafe.httpImpl or game:GetService("HttpService")
	local httpFuncName = isInternal and "RequestInternal" or "RequestAsync"
	assert(
		httpImpl[httpFuncName],
		string.format("Could not find %s defined on %s.", tostring(httpFuncName), tostring(httpImpl.ClassName))
	)

	local networkObj = {
		_httpImpl = httpImpl,
		_isInternal = isInternal,
		_loggingLevel = loggingLevel,
		_allowYielding = allowYielding,
	}
	setmetatable(networkObj, Networking)

	return networkObj
end

-- props : (table, optional)
-- props.loggingLevel : (LOGGING_CHANNELS, optional) a bitwise from 0 - 7 used when deciding what debug messages to log
-- props.onRequest : (function<table>(requestOptions)) a callback for handling the request and mocking the response
function Networking.mock(props)
	-- create an implementation that never touches the network
	if not props then
		props = {}
	end

	local loggingLevel = props.loggingLevel or LOGGING_CHANNELS.NONE
	assert(type(loggingLevel) == "number", "loggingLevel expected to be a LOGGING_CHANNELS enum")
	assert(
		(loggingLevel >= LOGGING_CHANNELS.NONE) and (loggingLevel <= LOGGING_CHANNELS.VERBOSE),
		"loggingLevel expected to be valid"
	)

	local onRequest = props.onRequest
	if not onRequest then
		onRequest = function(requestOptions)
			if loggingLevel >= LOGGING_CHANNELS.DEBUG then
				warn(string.format("Unhandled request to %s. Returning default response.", requestOptions.requestUrl))
			end
			return {
				Body = "{}",
				Success = true,
				StatusMessage = "OK",
				StatusCode = 200,
			}
		end
	end
	assert(type(onRequest) == "function", "onRequest expected to be a function.")

	local mockHttpService = {
		ClassName = "Networking.lua's MockHttpService",
		onRequestHandler = onRequest,
	}
	function mockHttpService:RequestAsync(options)
		local response = self.onRequestHandler(options)
		assert(type(response) == "table", "onRequest is expected to return a table")
		assert(type(response.Body) == "string", "onRequest is expected to return a table with a string Body property")
		assert(
			type(response.Success) == "boolean",
			"onRequest is expected to return a table with a boolean Success property"
		)
		assert(
			type(response.StatusMessage) == "string",
			"onRequest is expected to return a table with a string StatusMessage property"
		)
		assert(
			type(response.StatusCode) == "number",
			"onRequest is expected to return a table with a number StatusCode property"
		)
		return response
	end

	local networking = Networking.new({
		httpImpl = mockHttpService,
		loggingLevel = loggingLevel,
		allowYielding = false,
	})

	return networking
end

-- channel : (LOGGING_CHANNELS) a bitwise from 0 - 7 used when deciding what debug messages to log
function Networking:_isLoggingEnabled(channel)
	return bit32.btest(self._loggingLevel, channel)
end

-- options : (table)
-- options.Url : (string) the web url to request
-- options.Method : (string) "GET", "POST", "DELETE", "PATCH", "PUT"
-- options.Body : (string, required when Method = "POST")
-- options.Headers : (table) A dictionary of headers to be used with this request. Most HTTP headers are accepted here.
function Networking:request(options)
	assert(options["Url"], "Options table requires a 'Url' field")
	assert(options["Method"], "Options table requires a 'Method' field")
	-- this function handles the actual network request and any and all additional
	-- business logic around the request.

	if self:_isLoggingEnabled(LOGGING_CHANNELS.REQUESTS) then
		local log = { "Outgoing Network Request :" }
		for k, v in pairs(options) do
			table.insert(log, string.format(" - %s : %s", k, tostring(v)))
		end
		print(table.concat(log, "\n"))
	end

	-- time how long the request takes to complete
	local startTime = tick()

	local httpPromise = Promise.new(function(resolve, reject)
		local function parseResponse(success, responseDict)
			-- package information about the response into a single object
			local endTime = tick()
			local responseTimeMs = (endTime - startTime) * 1000

			if success then
				if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
					local log = { "Incoming Network Response :" }

					if self:_isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						-- give a full, verbose dump of all the fields that came back
						for k, v in pairs(responseDict) do
							if type(v) == "table" then
								table.insert(log, string.format(" - %s : {", k))
								for nestedK, nestedV in pairs(v) do
									table.insert(log, string.format("\t- %s = %s", nestedK, tostring(nestedV)))
								end
								table.insert(log, " }")
							else
								table.insert(log, string.format(" - %s : %s", k, tostring(v)))
							end
						end
						table.insert(log, string.format(" - Time (ms) : %s", tostring(responseTimeMs)))
					else
						-- provide a simplifed look at just the body
						table.insert(log, string.format(" - Body : %s", tostring(responseDict.Body)))
					end
					print(table.concat(log, "\n"))
				end

				-- parse out the fields from HttpService:RequestAsync :
				-- https://developer.roblox.com/en-us/api-reference/function/HttpService/RequestAsync#response-dictionary-fields
				local responseBody = responseDict.Body
				local statusCode = responseDict.StatusCode -- integer
				local requestSuccess
				if self._isInternal then
					requestSuccess = statusCode == 200
				else
					requestSuccess = responseDict.Success -- boolean
				end

				local response = HttpResponse.new(responseBody, responseTimeMs, statusCode, options)
				if requestSuccess then
					if self:_isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						print(string.format("Http request to %s resolved successfully.", options["Url"]))
					end
					resolve(response)
				else
					response.requestErrorMessage =
						`Http request to {options["Url"]} rejected because request did not succeed.`
					if self:_isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						print(response.requestErrorMessage)
					end

					reject(response)
				end
			else
				local errorResponse = HttpResponse.new(responseDict, responseTimeMs, StatusCodes.UNKNOWN_ERROR, options)

				errorResponse.requestErrorMessage =
					`Http request to {options["Url"]} rejected because pcall returned false with message: {responseDict}`
				if self:_isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
					print(errorResponse.requestErrorMessage)
				end

				reject(errorResponse)
			end
		end

		local function handleRequest()
			-- fetch the raw response from the server
			if self._isInternal then
				self._httpImpl:RequestInternal(options):Start(function(success, responseDict)
					if self._allowYielding then
						spawn(function()
							parseResponse(success, responseDict)
						end)
					else
						parseResponse(success, responseDict)
					end
				end)
			else
				-- NOTE - this pcall will prevent the server from throwing errors on a 404 or other server problem
				local success, responseDict = pcall(self._httpImpl.RequestAsync, self._httpImpl, options)
				parseResponse(success, responseDict)
			end
		end

		if self._allowYielding then
			spawn(handleRequest)
		else
			handleRequest()
		end
	end)

	return httpPromise
end

-- url : (string)
-- headers : (optional)
-- payload : (optional string)
function Networking:delete(url, headers, payload)
	local options = {
		Url = url,
		Method = "DELETE",
		Headers = headers,
	}
	if payload then
		options.Body = payload
	end
	return self:request(options)
end

-- url : (string)
-- headers : (optional)
function Networking:get(url, headers)
	local options = {
		Url = url,
		Method = "GET",
		Headers = headers,
	}
	return self:request(options)
end

-- url : (string)
-- payload : (string)
-- headers : (optional)
function Networking:patch(url, payload, headers)
	local options = {
		Url = url,
		Body = payload,
		Method = "PATCH",
		Headers = headers,
	}
	return self:request(options)
end

-- url : (string)
-- payload : (string)
-- headers : (optional)
function Networking:post(url, payload, headers)
	local options = {
		Url = url,
		Body = payload,
		Method = "POST",
		Headers = headers,
	}
	return self:request(options)
end

-- url : (string)
-- headers : (optional, table)
function Networking:put(url, headers)
	local options = {
		Url = url,
		Method = "PUT",
		Headers = headers,
	}
	return self:request(options)
end

-- requestPromise : (Promise<HttpResponse>) a Promise created by Networking:request
function Networking:parseJson(requestPromise)
	return requestPromise:andThen(function(result)
		local success, jsonBody = pcall(HttpService.JSONDecode, HttpService, result.responseBody)
		if success then
			result.responseBody = jsonBody
			if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
				print("ResponseBody parsed to JSON and stored into `result.responseBody`.")
			end

			return result
		else
			result.parseJsonErrorMessage = "Could not parse `result.responseBody` to JSON: " .. tostring(jsonBody)
			if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
				warn(result.parseJsonErrorMessage)
			end

			return Promise.reject(result)
		end
	end, function(err)
		-- check if the failed request has a body that can be parsed
		if type(err) == "table" then
			if type(err.responseBody) == "string" then
				local success, jsonBody = pcall(HttpService.JSONDecode, HttpService, err.responseBody)
				if success then
					err.responseBody = jsonBody

					if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
						print("ResponseBody parsed to JSON and stored into `err.responseBody`.")
					end
				else
					err.parseJsonErrorMessage = "Could not parse `err.responseBody` to JSON: " .. tostring(jsonBody)
					if self:_isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						warn(err.parseJsonErrorMessage)
					end
				end
			else
				err.parseJsonErrorMessage =
					"ResponseBody was not parsed to JSON because failed request returned unexpected type."
				if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
					warn(err.parseJsonErrorMessage)
				end
			end
		else
			-- `err` is not a table here, so we can't augment it with an `parseJsonErrorMessage` property
			if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
				warn("ResponseBody was not parsed to JSON because failed request returned unexpected type.")
			end
		end

		return Promise.reject(err)
	end)
end

-- requestPromise : (Promise<HttpResponse>) a Promise created by Networking:request
-- numRetries : (number, optional) the number of times to retry upon failure
-- diableBackoff : (bool, optional) when true, turns off exponential backoff
function Networking:handleRetry(requestPromise, numRetries, disableBackoff)
	if not numRetries then
		numRetries = 3
	end

	if disableBackoff == nil then
		disableBackoff = false
	end

	return requestPromise:andThen(function(result)
		return result
	end, function(err)
		-- if we fail, retry until :
		--  a) we succeed
		--  b) we fail the number of retries
		return Promise.new(function(resolve, reject)
			-- keep a count of the number of times we've made a request
			local requestCount = 0

			local function makeRequest(errResponse)
				requestCount = requestCount + 1

				if requestCount > numRetries then
					errResponse.handleRetryErrorMessage =
						`Reached maximum number of retries ({numRetries}). Rejecting request.`
					if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
						print(errResponse.handleRetryErrorMessage)
					end
					reject(errResponse)
					return
				end

				-- Do not retry on HTTP 4xx (client) errors
				if errResponse.responseCode >= 400 and errResponse.responseCode < 500 then
					errResponse.handleRetryErrorMessage = "4xx error response. Rejecting request."
					if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
						print(errResponse.handleRetryErrorMessage)
					end
					reject(errResponse)
					return
				end

				local method = err.requestOptions["Method"]
				if method == "POST" or method == "PATCH" then
					errResponse.handleRetryErrorMessage = `Error response to {method} request. Rejecting request.`
					if self:_isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
						print(errResponse.handleRetryErrorMessage)
					end
					reject(errResponse)
					return
				end

				if self:_isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
					print(string.format("Http request failed. Attempting retry #%d", requestCount))
				end

				if not disableBackoff then
					if self:_isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						print(string.format("- waiting for %d seconds before next attempt", math.pow(2, requestCount)))
					end
					wait(math.pow(2, requestCount))
				end

				local options = err.requestOptions
				self:request(options):andThen(resolve, makeRequest)
			end

			makeRequest(err)
		end)
	end)
end

return Networking
