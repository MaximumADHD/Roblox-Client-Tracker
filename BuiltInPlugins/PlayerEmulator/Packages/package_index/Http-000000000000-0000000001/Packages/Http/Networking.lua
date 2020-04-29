--[[
	Networking

	Provides a re-usable, Promise-based implementation for network requests and other utilities

	Example Usage:
	-- get the games in the game sort
	local Networking = Networking.new()

	Networking:get("https://wwww.roblox.com/"):andThen(function(getResponse)
		-- handle the response
	end, function(getErr)
		-- handle any errors from the request
	end)
]]--

local HttpService = game:GetService("HttpService")

local Promise = require(script.Parent.Parent.Promise)
local HttpResponse = require(script.Parent.HttpResponse)
local StatusCodes = require(script.Parent.StatusCodes)

local LOGGING_CHANNELS = {
	NONE = 0,
	REQUESTS = 1,
	RESPONSES = 2,
	-- REQUESTS + RESPONSES = 3
	DEBUG = 4,
	-- DEBUG + REQUESTS = 5
	-- DEBUG + RESPONSES = 6
	-- DEBUG + REQUESTS + RESPONSES = 7
	VERBOSE = 7
}

-- public api
local Networking = {}
Networking.__index = Networking

-- props
-- httpImpl : (Service, optional) something that implements RequestAsync(options)
-- isInternal : (bool, optional)
-- loggingLevel : (integer, optional)
-- allowYielding : (bool, optional)
function Networking.new(props)
	if not props then
		props = {}
	end

	local httpImpl = props.httpImpl or game:GetService("HttpService")
	local isInternal = props.isInternal
	local loggingLevel = props.loggingLevel or LOGGING_CHANNELS.NONE
	local allowYielding = props.allowYielding

	if isInternal == nil then
		isInternal = false
	end

	if allowYielding == nil then
		allowYielding = true
	end

	local httpFuncName = isInternal and "RequestInternal" or "RequestAsync"
	assert(httpImpl[httpFuncName], string.format("Could not find %s defined on %s.", httpFuncName, httpImpl.ClassName))

	local networkObj = {
		_httpImpl = httpImpl,
		_isInternal = isInternal,
		_loggingLevel = loggingLevel,
		_allowYielding = allowYielding,
		_isLoggingEnabled = function(channel)
			return bit32.btest(loggingLevel, channel)
		end,
	}
	setmetatable(networkObj, Networking)

	return networkObj
end

-- responseMap : (dictionary<string, table>) a map of urls to preformatted responses
-- loggingLevel : (LOGGING_CHANNELS, optional)
function Networking.mock(responseMap, loggingLevel)
	-- create an implementation that never touches the network
	local mockHttpService = {
		ClassName = "Networking.lua's MockHttpService",

		_defaultResponse = {
			Body = "{}",
			Success = true,
			StatusMessage = "OK",
			StatusCode = 200,
		},
	}

	function mockHttpService:RequestAsync(options)
		local url = options["Url"]

		-- check if the exact url is in responseMap
		if responseMap[url] then
			return responseMap[url]

		-- check if a version of the url can be found in the responseMap without parameters
		-- ex: www.roblox.com/games when looking searching for www.roblox.com/games/?sortfilter=default
		else
			for testUrl, response in pairs(responseMap) do
				if url:find(testUrl) then
					return response
				end
			end
		end

		return self._defaultResponse
	end

	return Networking.new({
		httpImpl = mockHttpService,
		loggingLevel = loggingLevel,
		allowYielding = false,
	})
end

-- requestPromise : (Promise<HttpResponse>)
function Networking.parseJson(requestPromise)
	return requestPromise:andThen(function(result)
		result.responseBody = HttpService:JSONDecode(result.responseBody)
		return result
	end, function(err)
		return err
	end)
end

-- requestPromise : (Promise<HttpResponse>)
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
					reject(errResponse)
					return
				end

				if self._isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
					print(string.format("Http request failed. Attempting retry #%d", requestCount))
				end

				if not disableBackoff then
					if self._isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						print(string.format("- waiting for %d seconds before next attempt", math.pow(2, requestCount)))
					end
					if self._allowYielding then
						wait(math.pow(2, requestCount))
					end
				end

				local options = err.requestOptions
				self:request(options):andThen(resolve, makeRequest)
			end

			makeRequest(err)
		end)
	end)
end

-- If someone knows exactly what they what to, they can just use this
-- RETURNS : (Promise<HttpResponse>) object containing information about the request
function Networking:request(options)
	assert(options["Url"], "Options table requires a 'Url' field")
	assert(options["Method"], "Options table requires a 'Method' field")
	-- this function handles the actual network request and any and all additional
	-- business logic around the request.

	if self._isLoggingEnabled(LOGGING_CHANNELS.REQUESTS) then
		local log = { "Outgoing Network Request :", }
		for k, v in pairs(options) do
			table.insert(log, string.format(" - %s : %s", k, v))
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
				if self._isLoggingEnabled(LOGGING_CHANNELS.RESPONSES) then
					local log = { "Incoming Network Response :", }

					if self._isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
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

				local responseBody = responseDict.Body
				local statusMsg = responseDict.StatusMessage -- string
				local statusCode = responseDict.StatusCode -- integer
				local requestSuccess
				if self._isInternal then
					requestSuccess = success
				else
					requestSuccess = responseDict.Success -- boolean
				end

				local response = HttpResponse.new(responseBody, responseTimeMs, statusCode, options)
				if requestSuccess then
					if self._isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						print(string.format("Http request to %s resolved successfully.", options["Url"]))
					end

					resolve(response)
				else
					if self._isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
						print(string.format("Http request to %s rejected because request did not succeed.", options["Url"]))
					end

					reject(response)
				end
			else
				if self._isLoggingEnabled(LOGGING_CHANNELS.DEBUG) then
					print(string.format("Http request to %s rejected because pcall returned false with message : %s",
						options["Url"], responseDict))
				end

				reject(HttpResponse.new(responseDict, responseTimeMs, StatusCodes.UNKNOWN_ERROR, options))
			end
		end

		local function handleRequest()
			-- fetch the raw response from the server
			if self._isInternal then
				self._httpImpl:RequestInternal(options):Start(parseResponse)
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
-- headers : (options)
-- returns : Promise<HttpResponse>
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
-- headers : (options)
-- returns : Promise<HttpResponse>
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
-- headers : (options)
-- returns : Promise<HttpResponse>
function Networking:delete(url, headers)
	local options = {
		Url = url,
		Method = "DELETE",
		Headers = headers,
	}
	return self:request(options)
end

return Networking
