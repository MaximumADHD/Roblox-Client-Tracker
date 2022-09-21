local HttpService = game:GetService("HttpService")

local root = script.Parent
local Packages = root.Parent

local SharedUtils = require(Packages.SharedUtils)
local unwrapPromiseError = SharedUtils.unwrapPromiseError

local Types = require(root.Types)
local httpContentTypeToHeader = require(root.httpContentTypeToHeader)
local HttpRequestWrapper = require(root.HttpRequestWrapper)

local HttpServiceMock = {}
local HttpServiceMockMetatable = { __index = HttpServiceMock }

type Headers = Types.Headers
type RequestOptions = Types.RequestOptions
type RequestInternalOptions = Types.RequestInternalOptions
type Request = Types.Request

type Response = Types.Response
type RequestAsyncResponse = Types.RequestAsyncResponse
type RequestResult = Types.RequestResult
type HttpRequestWrapper = HttpRequestWrapper.HttpRequestWrapper
type PromiseLike<T> = {
	await: (PromiseLike<T>) -> (boolean, T | any),
}
export type HttpServiceMock = {
	GenerateGUID: (self: HttpServiceMock, wrapInCurlyBraces: boolean?) -> string,
	GetAsync: (self: HttpServiceMock, url: string, nocache: boolean?, headers: Headers?) -> string,
	GetHttpEnabled: (self: HttpServiceMock) -> boolean,
	GetUserAgent: (self: HttpServiceMock) -> string,
	JSONDecode: (self: HttpServiceMock, input: string) -> (),
	JSONEncode: (self: HttpServiceMock, input: any) -> string,
	PostAsync: (
		self: HttpServiceMock,
		url: string,
		data: string,
		contentType: Enum.HttpContentType?,
		compress: boolean?,
		headers: Headers?
	) -> string,
	RequestAsync: (self: HttpServiceMock, requestOptions: RequestOptions) -> RequestAsyncResponse,
	RequestInternal: (
		self: HttpServiceMock,
		internalRequest: RequestInternalOptions
	) -> HttpRequestWrapper,
	SetHttpEnabled: (self: HttpServiceMock, enabled: boolean) -> (),
	UrlEncode: (self: HttpServiceMock, input: string) -> string,
	HttpEnabled: boolean,
	_processLegacyResponse: (self: HttpServiceMock, request: Request) -> string,
}
type HttpServiceMockStatic = {
	new: (
		requestImplementation: (Request, source: string) -> PromiseLike<RequestResult>
	) -> HttpServiceMock,
}

local function normalizeHeaderName(header: string): string
	return header:lower()
end

local function normalizeHeaders(headers: Headers): Headers
	local newHeaders = {}
	for name, value in pairs(headers) do
		local lowercaseName = normalizeHeaderName(name)
		newHeaders[lowercaseName] = value
	end
	return newHeaders
end

local function normalizeMethod(method: string): string
	return method:upper()
end

function HttpServiceMock.new(
	requestImplementation: (Request, source: string) -> PromiseLike<RequestResult>
): HttpServiceMock
	return setmetatable({
		HttpEnabled = true,
		_requestImplementation = requestImplementation,
	}, HttpServiceMockMetatable) :: any
end

function HttpServiceMock:GenerateGUID(wrapInCurlyBraces: boolean?): string
	return HttpService:GenerateGUID(wrapInCurlyBraces)
end

function HttpServiceMock:GetAsync(url: string, nocache: boolean?, headers: Headers?): string
	if nocache == nil then
		nocache = false
	end

	local headersNormalized = normalizeHeaders(headers or {})

	if nocache then
		headersNormalized[normalizeHeaderName("cache-control")] = "no-cache"
	end

	return self:_processLegacyResponse({
		Type = "get",
		Url = url,
		Method = normalizeMethod("GET"),
		Headers = headersNormalized,
		Body = nil,
		Timeout = nil,
		Priority = nil,
		CachePolicy = nil,
		RequestType = nil,
	})
end

function HttpServiceMock:GetHttpEnabled(): boolean
	return self.HttpEnabled
end

function HttpServiceMock:GetUserAgent(): string
	return "Roblox/mockAgent"
end

function HttpServiceMock:JSONDecode(input: string)
	return HttpService:JSONDecode(input)
end

function HttpServiceMock:JSONEncode(input: any): string
	return HttpService:JSONEncode(input)
end

function HttpServiceMock:PostAsync(
	url: string,
	data: string,
	contentType: Enum.HttpContentType?,
	compress: boolean?,
	headers: Headers?
): string
	local realContentType = Enum.HttpContentType.ApplicationJson
	if contentType ~= nil then
		realContentType = contentType
	end
	if compress == nil then
		compress = false
	end

	local headersNormalized = normalizeHeaders(headers or {})

	if compress then
		headersNormalized[normalizeHeaderName("content-encoding")] = "gzip"
	end

	headersNormalized[normalizeHeaderName("content-type")] =
		httpContentTypeToHeader(realContentType)

	return self:_processLegacyResponse({
		Type = "post",
		Url = url,
		Method = normalizeMethod("POST"),
		Headers = headersNormalized,
		Body = data,
	})
end

function HttpServiceMock:_processLegacyResponse(request: Request): string
	local requestSource = debug.traceback(nil, 3)
	local result = self._requestImplementation(request, requestSource):expect()

	if result.type == "error" then
		error(result.error, 2)
	elseif result.type == "internal-error" then
		error(unwrapPromiseError(result.error), 2)
	elseif result.type == "response" then
		local response = result.response
		local statusCode = response.StatusCode
		if statusCode >= 200 and statusCode <= 299 and statusCode ~= 202 then
			return response.Body
		end

		error(("HTTP %d (%s)"):format(statusCode, response.StatusMessage), 2)
	elseif result.type == "suspend" then
		error("request was delayed until the record-playback logic ended", 2)
	else
		error(("unknown result of type `%s`"):format(tostring(result.type)), 2)
	end
end

function HttpServiceMock:RequestAsync(requestOptions: RequestOptions): RequestAsyncResponse
	local requestSource = debug.traceback(nil, 2)
	local result = self._requestImplementation({
		Type = "request",
		Url = requestOptions.Url,
		Method = normalizeMethod(requestOptions.Method or "GET"),
		Headers = normalizeHeaders(requestOptions.Headers or {}),
		Body = requestOptions.Body,
	}, requestSource):expect()

	if result.type == "error" then
		error(result.error)
	elseif result.type == "internal-error" then
		error(unwrapPromiseError(result.error))
	elseif result.type == "response" then
		return result.response
	else
		error(("unknown result of type `%s`"):format(tostring(result.type)))
	end
end

function HttpServiceMock:RequestInternal(internalRequest: RequestInternalOptions)
	local request = {
		Type = "internal" :: "internal",
		Url = internalRequest.Url,
		Method = normalizeMethod(internalRequest.Method or "GET"),
		Headers = normalizeHeaders(internalRequest.Headers or {}),
		Body = internalRequest.Body,
		Timeout = internalRequest.Timeout,
		Priority = internalRequest.Priority,
		CachePolicy = internalRequest.CachePolicy,
		RequestType = internalRequest.RequestType,
	}

	return HttpRequestWrapper.new(request, self._requestImplementation)
end

function HttpServiceMock:SetHttpEnabled(enabled: boolean)
	self.HttpEnabled = enabled
end

function HttpServiceMock:UrlEncode(input: string): string
	return HttpService:UrlEncode(input)
end

return HttpServiceMock
