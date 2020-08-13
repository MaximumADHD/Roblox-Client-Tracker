--[[
	Wrapper on top of DevFramework's Http Networking to provide
	- Automatic retrying & JSON decoding of the response body
	- Automatic JSON encoding/setting of Content-Type header if body is a table
	- Url constructor for API sites
	- GET/PATCH request coalescing

	Example usage:
	networkingImpl:post("develop", "/v1/universes/"..gameId.."/thumbnails/order", {
		Params = { urlArg1 = urlArg1Value, ... },
		Headers = { ... },
		CachePolicy = Enum.HttpCachePolicy.None,
		Body = {
			thumbnailIds = {...},
		},
	})

	Returns a promise which you can :andThen(...) or :await() on.

	NOTE ON COALESCING:
	Requests must have the same method, url, and options (barring Data for PATCH requests) to be coalesced.
	If you make 50 duplicate GET requests while the 1st is still in-flight, all callers of the request will
	reuse the original and only make 1 request. PATCHes are more complicated in that we can't modify the Body
	after sending the request, so we wait a single spawn() before sending off the PATCH. If you send all of
	the requests in a single frame without yielding, all of them will be coalesced into a single request with
	their Body options flattened (conflicts favor later requests). If you need to yield after dispatching a
	PATCH request, then you can use coroutine.wrap to run multiple PATCHES that yield afterwards in the same frame
]]

local FFlagFixUploadingImagesInGameSettings = game:DefineFastFlag("FixUploadingImagesInGameSettings", false)

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local Http = require(Plugin.Framework.Http)
local Util = require(Plugin.Framework.Util)

local Promise = Util.Promise

local Url = require(Plugin.Framework.RobloxAPI.Url)
local tablesDeepEqual = require(Plugin.Src.Util.tablesDeepEqual)

local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")

local HTTP_VERBS = {"GET", "POST", "PUT", "PATCH", "DELETE"}

local function parseBaseUrlInformation(baseUrl)
	-- keep a copy of the base url and append a trailing slash if there isn't one
	if baseUrl:sub(#baseUrl) ~= "/" then
		baseUrl = baseUrl .. "/"
	end

	-- parse out scheme (http, https)
	local _, schemeEnd = baseUrl:find("://")

	-- parse out the prefix (www, kyle, ying, etc.)
	local prefixIndex, prefixEnd = baseUrl:find("%.", schemeEnd + 1)
	local basePrefix = baseUrl:sub(schemeEnd + 1, prefixIndex - 1)

	-- parse out the domain
	local baseDomain = baseUrl:sub(prefixEnd + 1)

	-- remove trailing slash from base domain
	if baseDomain[#baseDomain] == "/" then
		baseDomain = baseDomain:sub(1, #baseDomain-1)
	end

	return baseUrl, basePrefix, baseDomain
end

local _,_,baseDomain = parseBaseUrlInformation(ContentProvider.BaseUrl)
local function constructUrl(subdomain, path, args)
	assert(path:sub(1,1) == "/", "Path must begin with '/'")

	local fullUrl = Url.composeUrl(
		"https://"..subdomain.."."..baseDomain,
		path:sub(2, -1), -- Fix DeveloperFramework automatically prepending path with / when it already exists
		args
	)

	return fullUrl
end

local function canBeCoalesced(method)
	return method == "GET" or method == "PATCH"
end

local function deepJoin(t1, t2)
	local override = {}
	for k,v in pairs(t2) do
		if typeof(v) == "table" and typeof(t1[k]) == "table" then
			override[k] = deepJoin(t1[k], v)
		else
			override[k] = v
		end
	end

	return Cryo.Dictionary.join(t1, override)
end

local NetworkingImpl = {}
NetworkingImpl.__index = NetworkingImpl

function NetworkingImpl.new(options)
	options = Cryo.Dictionary.join({
		isInternal = true,
		retryAmount = 3,
	}, options or {})

	local self = {
		__retryAmount = options.retryAmount,
		__baseImpl = Http.Networking.new(options),
		__coalescedRequests = {
			--[get][url] = { [uid] = {options=options, promise=promise}, [uid] = {options=options, promise=promise} }
		}
	}

	for _,httpVerb in ipairs(HTTP_VERBS) do
		self.__coalescedRequests[httpVerb] = {}
	end

	return setmetatable(self, NetworkingImpl)
end

function NetworkingImpl:request(subdomain, path, options)
	local url = constructUrl(subdomain, path, options.Params)
	options = Cryo.Dictionary.join(options, {
		Params = Cryo.None, -- Not a real option of HttpRbxApiService:Request()
		Url = url,
	})

	local method = options.Method
	if canBeCoalesced(method) then
		return self:__requestWithCoalesce(options)
	else
		return self:__requestWithoutCoalesce(options)
	end
end

-- Generates NetworkingImpl:get(...), NetworkingImpl:post(...), etc
for _,method in pairs(HTTP_VERBS) do
	NetworkingImpl[method:lower()] = function(self, subdomain, path, options)
		return self:request(subdomain, path, Cryo.Dictionary.join(options or {}, {
			Method = method,
		}))
	end
end

function NetworkingImpl:__requestWithoutCoalesce(options)
	-- Automatically convert JSON bodies to strings (required by HttpRbxApiService) and set appropriate Content-Type

	if options.Body ~= nil then
		local body
		if FFlagFixUploadingImagesInGameSettings then
			local shouldJsonEncode = true
			local headers = options.Headers

			if typeof(headers) == "table" then
				local contentType = headers["Content-Type"]
				if contentType and string.find(contentType, "multipart/form") then
					shouldJsonEncode = false
				end
			end

			body = shouldJsonEncode and HttpService:JSONEncode(options.Body) or options.Body
		else
			body = HttpService:JSONEncode(options.Body)
		end

		options = Cryo.Dictionary.join(options, {
			Body = body,
			Headers = Cryo.Dictionary.join({
				["Content-Type"] = "application/json",
			}, options.Headers or {})
		})
	end

	local promise = self.__baseImpl:request(options)
	return self.__baseImpl:parseJson(self.__baseImpl:handleRetry(promise, self.__retryAmount))
end

-- Returns existing request if there is already an in-flight duplicate; otherwise makes the request
-- and tracks it in in-flight requests
function NetworkingImpl:__requestWithCoalesce(options)
	local method = options.Method
	local url = options.Url
	local existingRequest = self:__getExistingRequest(options)

	if existingRequest then
		if method == "PATCH" then
			existingRequest.options = deepJoin(existingRequest.options, {
				Body = options.Body,
			})
		end

		return existingRequest.promise
	end

	-- Use a unique id for each "separate" request (we can't use url since requests with the same url but
	-- different options are not coalesced)
	local requestKey = HttpService:GenerateGUID()
	local promise

	local function removeFromExistingRequests()
		self.__coalescedRequests[method][url][requestKey] = nil
	end

	if method == "GET" then
		-- GETs are easy. Immediately fire off the request, and remove from lookup when it finishes
		promise = self:__requestWithoutCoalesce(options)
		promise:andThen(removeFromExistingRequests, removeFromExistingRequests)
	elseif method == "PATCH" then
		-- PATCHes are more complicated. We can't immediately fire it off because subsequent PATCHes in the same frame
		-- may add more to the body. So, we wait a small bit via spawn to accumulate the full Body before sending it off
		promise = Promise.new(function(resolve, reject)
			spawn(function()
				local coalescedBody = self.__coalescedRequests[method][url][requestKey].options.Body
				self:__requestWithoutCoalesce(Cryo.Dictionary.join(options, {
					Body = coalescedBody,
				})):andThen(resolve, reject)

				removeFromExistingRequests()
			end)
		end)
	else
		assert(false)
	end

	-- Add to lookup so future duplicate requests can be coalesced
	self.__coalescedRequests[method][url] = self.__coalescedRequests[method][url] or {}
	self.__coalescedRequests[method][url][requestKey] = {promise=promise, options=options}

	return promise
end

-- Checks to see if there is a pending coalescable request with the exact same url/options
function NetworkingImpl:__getExistingRequest(options)
	local method = options.Method
	local url = options.Url
	local existingRequests = self.__coalescedRequests[method][url]
	if not existingRequests then
		return nil
	end

	-- We don't compare body since coalesced PATCH requests are combined even with different bodies,
	-- and GET requests can't have bodies
	local optionsWithoutBody = Cryo.Dictionary.join(options, {
		Body = Cryo.None,
	})

	local matchingRequest
	for _,existingRequest in pairs(existingRequests) do
		local existingOptions = Cryo.Dictionary.join(existingRequest.options, {
			Body = Cryo.None,
		})

		if tablesDeepEqual(optionsWithoutBody, existingOptions) then
			matchingRequest = existingRequest
			break
		end
	end

	if not matchingRequest then
		return nil
	end

	return matchingRequest
end

return NetworkingImpl