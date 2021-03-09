local Root = script:FindFirstAncestor("http-request").Parent
local Cryo = require(Root.Cryo)

local HttpService = game:GetService("HttpService")

local StatusCode = require(script.Parent.StatusCode)
local HttpSession = require(script.Parent.HttpSession)
local HttpResponse = require(script.Parent.HttpResponse)

local DEFAULT_MAX_RETRY_COUNT = 4
local DEFAULT_MAX_WAIT_AFTER_RETRY = 16

local RETRY_ON_STATUS_CODE = {
	[StatusCode.REQUEST_TIMEOUT] = true,
	[StatusCode.SERVICE_UNAVAILABLE] = true,
	[StatusCode.GATEWAY_TIMEOUT] = true,
}

local HttpRequest = {}
HttpRequest.__index = HttpRequest

-- configOptions : (table)
--     configOptions.requestFunction : (function) (url : string, methodType : string, requestOptions : table) -> HttpRequest
--     configOptions.postRequestFunction : (function) (response : table) function to call after every successful response
--     configOptions.maxRetryCount : (number, optional) the maximum number of times to retry a request
--     configOptions.maxWaitTime : (number, optional) the maximum time to wait to retry a request
--     configOptions.waitImpl : (function, optional) a function that waits the given time
--     configOptions.defaultOptions : (table, optional) an options table that will apply default options to all requests
-- url : (string)
-- requestMethod : (string) "GET", "POST", "PATCH", "DELETE"
-- options : (table, optional)
--     You may add any options to be passed to the requestFunction as needed
-- RETURNS : HttpRequest
function HttpRequest.new(configOptions, url, requestMethod, options)
	configOptions = configOptions or {}
	options = options or {}

	local self = {
		resolve = nil,
		reject = nil,
		retryCount = 0,
		httpRequest = nil,
		canceled = false,
		requestFunction = configOptions.requestFunction,
		postRequestFunction = configOptions.postRequestFunction,
		url = url,
		requestMethod = requestMethod,
		options = Cryo.Dictionary.join(configOptions.defaultOptions or {}, options),
		waitImpl = configOptions.waitImpl or delay,
		maxRetryCount = configOptions.maxRetryCount or DEFAULT_MAX_RETRY_COUNT,
		maxWaitTime = configOptions.maxWaitTime or DEFAULT_MAX_WAIT_AFTER_RETRY,
		session = HttpSession.currentSession(),
	}

	setmetatable(self, HttpRequest)
	return self
end

function HttpRequest:start(resolve, reject)
	self.resolve = resolve
	self.reject = reject
	self:makeRequest()
end

function HttpRequest:processResponse(response)
	local success, result = pcall(HttpService.JSONDecode, HttpService, response.Body)

	if success then
		if self.postRequestFunction then
			pcall(self.postRequestFunction, response, {
				url = self.url,
				requestMethod = self.requestMethod,
				options = self.options,
				retryCount = self.retryCount,
			})
		end

		self.resolve(HttpResponse.success(response.StatusCode, result))
	else
		self.reject(HttpResponse.error(Enum.HttpError.OK))
	end
end

function HttpRequest:retry(lastResponse, waitTime)
	self.retryCount = self.retryCount + 1
	if self.retryCount > self.maxRetryCount then
		self.reject(lastResponse)
		return
	end

	self:wait(waitTime or math.pow(2, self.retryCount))
end

function HttpRequest:wait(waitTime)
	self.waitImpl(waitTime, function()
		self:makeRequest()
	end)
end

function HttpRequest:makeRequest()
	if self.canceled then
		return
	end
	self.httpRequest = self.requestFunction(self.url, self.requestMethod, self.options)
	self.httpRequest:Start(function(success, response)
		if self.session ~= HttpSession.currentSession() then
			warn("Http request aborted", self.url)
			return
		end

		if success then
			if response.StatusCode >= 200 and response.StatusCode < 400 then
				self:processResponse(response)
			elseif RETRY_ON_STATUS_CODE[response.StatusCode] then
				self:retry(response)
			elseif response.StatusCode == StatusCode.TOO_MANY_REQUESTS and response.Headers["Retry-After"] then
				local waitTime = tonumber(response.Headers["Retry-After"])
				if waitTime ~= nil and waitTime <= self.maxWaitTime then
					self:retry(response, waitTime)
				else
					self.reject(response)
				end
			else
				self.reject(response)
			end
		elseif not self.canceled then
			self:retry(HttpResponse.error(response.HttpError))
		end
	end)
end

function HttpRequest:cancel()
	self.canceled = true
	self.reject(HttpResponse.error(Enum.HttpError.Aborted))
	if self.httpRequest then
		self.httpRequest:Cancel()
	end
end

return HttpRequest
