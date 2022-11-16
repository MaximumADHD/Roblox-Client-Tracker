-- spec: https://fetch.spec.whatwg.org/#request
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local instanceOf = LuauPolyfill.instanceof

local HeadersModule = require(script.Parent.Headers)
local Headers = HeadersModule.Headers
type HeadersInit = HeadersModule.HeadersInit
type Headers = HeadersModule.Headers

local BodyModule = require(script.Parent.Body)
local Body = BodyModule.Body
type BodyInit = BodyModule.BodyInit
type Body = BodyModule.Body

local AbortSignalModule = require(script.Parent.AbortSignal)
local AbortSignal = AbortSignalModule.AbortSignal
type AbortSignal = AbortSignalModule.AbortSignal

type RequestDestination =
	""
	| "audio"
	| "document"
	| "font"
	| "frame"
	| "image"
	| "object"
	| "script"
	| "style"
	| "track"
	| "video"
type RequestMode = "same-origin" | "no-cors" | "cors"
type RequestCredentials = "omit" | "same-origin" | "include"
-- deviation from spec: use roblox cache policies
type RequestCache = Enum.HttpCachePolicy
type RequestRedirect = "follow" | "error" | "manual"
type RequestDuplex = "half"
type ReferrerPolicy =
	""
	| "no-referrer"
	| "no-referrer-when-downgrade"
	| "same-origin"
	| "origin"
	| "strict-origin"
	| "origin-when-cross-origin"
	| "strict-origin-when-cross-origin"
	| "unsafe-url"
type DOMString = string

export type RequestInfo = Request | string
export type RequestInit = {
	method: string?,
	headers: HeadersInit?,
	body: BodyInit?,
	referrer: string?,
	referrerPolicy: ReferrerPolicy?,
	mode: RequestMode?,
	credentials: RequestCredentials?,
	cache: RequestCache?,
	redirect: RequestRedirect?,
	integrity: DOMString?,
	keepalive: boolean?,
	signal: AbortSignal?,
	duplex: RequestDuplex?,
	window: any?,
}

export type Request = {
	method: string,
	url: string,
	headers: Headers,
	destination: RequestDestination,
	referrer: string,
	referrerPolicy: ReferrerPolicy,
	mode: RequestMode,
	credentials: RequestCredentials,
	cache: RequestCache,
	redirect: RequestRedirect,
	integrity: DOMString,
	keepalive: boolean,
	isReloadNavigation: boolean,
	isHistoryNavigation: boolean,
	signal: AbortSignal,
	duplex: RequestDuplex,
	clone: (self: Request) -> Request,
} & Body

local Request = setmetatable({}, { __index = Body })
Request.__index = Request

function Request.new(input: RequestInfo, init_: RequestInit?): Request
	local init: RequestInit = init_ or {}
	local parsedUrl = nil
	local request = nil

	if type(input) == "string" then
		parsedUrl = input
		request = {}
	elseif instanceOf(input, Request) then
		parsedUrl = input.url
		request = input
	else
		error("The first argument of Request.new() must be a string or Request object")
	end

	local inputBody = if not init.body and instanceOf(input, Request) then (input :: Request).body else nil
	local self = setmetatable(Body.new(init.body or inputBody), Request) :: any

	self.method = init.method or request.method or "GET"
	if (init.body or inputBody) and (self.method == "GET" or self.method == "HEAD") then
		error(string.format("'body' should not be provided as an option for request method %s", self.method))
	end

	self.url = parsedUrl
	local requestHeaders = request.headers or Headers.new()
	self.headers = if init.headers then Headers.new(init.headers) else requestHeaders
	self.cache = init.cache or request.cache or Enum.HttpCachePolicy.None
	self.signal = init.signal or request.signal or AbortSignal.abort("Request Cancelled")

	-- TODO: handle other Request options
	self.destination = "document"
	self.referrer = "client"
	self.referrerPolicy = "no-referrer"
	self.mode = init.mode or "cors"
	self.credentials = init.credentials or request.credentials or "omit"
	self.redirect = init.redirect or request.redirect or "error"
	self.integrity = init.integrity or request.integrity or ""
	self.keepalive = init.keepalive or request.keepalive or false
	self.isReloadNavigation = false
	self.isHistoryNavigation = false
	self.duplex = init.duplex or request.duplex or "half"

	return self :: Request
end

function Request:clone(): Request
	return Request.new(self)
end

return {
	Request = Request,
}
