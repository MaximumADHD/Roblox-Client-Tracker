local root = script.Parent
local Packages = root.Parent

local HttpServiceMock = require(Packages.HttpServiceMock)
local PrettyFormat = require(Packages.PrettyFormat)

local UrlUtils = require(root.UrlUtils)

type Request = HttpServiceMock.Request
type Response = HttpServiceMock.Response
export type FormattedRequest = {
	url: UrlUtils.Url,
	method: string,
	headers: HttpServiceMock.Headers,
	body: string?,
	timeout: number?,
	priority: number?,
	cachePolicy: Enum.HttpCachePolicy?,
	requestType: Enum.HttpRequestType?,
}
export type FormattedResponse = {
	type: "response",
	status: {
		success: boolean,
		code: number,
		message: string,
	},
	headers: HttpServiceMock.Headers,
	body: string,
} | {
	type: "internal-response",
	status: {
		code: number,
		message: string,
	},
	headers: HttpServiceMock.Headers,
	body: string?,
	isCached: boolean,
	stats: {
		retried: boolean,
		durations: {
			inQueue: number,
			nameLookup: number,
			connect: number,
			SSLHandshake: number,
			makeRequest: number,
			receiveResponse: number,
			roundTripTime: number,
		},
	},
} | {
	type: "internal-error",
	errorMessage: string,
	httpError: Enum.HttpError,
}

export type RequestFormatter = {
	formatRequest: (self: RequestFormatter, request: Request) -> FormattedRequest,
	formatResponse: (self: RequestFormatter, response: Response) -> FormattedResponse,
	loadResponse: (self: RequestFormatter, response: FormattedResponse) -> Response,
}
type RequestFormatterStatic = {
	new: () -> RequestFormatter,
}

local RequestFormatter: RequestFormatter & RequestFormatterStatic = {} :: any
local RequestFormatterMetatable = { __index = RequestFormatter }

function RequestFormatter.new(): RequestFormatter
	return setmetatable({}, RequestFormatterMetatable) :: any
end

function RequestFormatter:formatRequest(request: Request): FormattedRequest
	return {
		url = UrlUtils.parse(request.Url),
		method = request.Method,
		headers = request.Headers,
		body = request.Body,
		timeout = request.Timeout,
		priority = request.Priority,
		cachePolicy = request.CachePolicy,
		requestType = request.RequestType,
	}
end

function RequestFormatter:formatResponse(response: Response): FormattedResponse
	if response.Success ~= nil then
		return {
			type = "response",
			status = {
				success = response.Success,
				code = response.StatusCode,
				message = response.StatusMessage,
			},
			headers = response.Headers,
			body = response.Body,
		}
	elseif response.Stats ~= nil then
		return {
			type = "internal-response",
			status = {
				code = response.StatusCode,
				message = response.StatusMessage,
			},
			headers = response.Headers,
			body = response.Body,
			isCached = response.IsCached,
			stats = {
				retried = response.Stats.WasRequestRetried,
				durations = {
					inQueue = response.Stats.DurationInQueue,
					nameLookup = response.Stats.DurationNameLookup,
					connect = response.Stats.DurationConnect,
					SSLHandshake = response.Stats.DurationSSLHandshake,
					makeRequest = response.Stats.DurationMakeRequest,
					receiveResponse = response.Stats.DurationReceiveResponse,
					roundTripTime = response.Stats.RoundTripTime,
				},
			},
		}
	elseif response.ErrorMessage ~= nil then
		return {
			type = "internal-error",
			errorMessage = response.ErrorMessage,
			httpError = response.HttpError,
		}
	else
		error("unsupported response " .. PrettyFormat.format(response))
	end
end

function RequestFormatter:loadResponse(response: FormattedResponse): Response
	if response.type == "response" then
		return {
			Success = response.status.success,
			StatusCode = response.status.code,
			StatusMessage = response.status.message,
			Headers = response.headers,
			Body = response.body,
		}
	elseif response.type == "internal-response" then
		return {
			StatusCode = response.status.code,
			StatusMessage = response.status.message,
			Headers = response.headers,
			Body = response.body,
			IsCached = response.isCached,
			Stats = {
				WasRequestRetried = response.stats.retried,
				DurationInQueue = response.stats.durations.inQueue,
				DurationNameLookup = response.stats.durations.nameLookup,
				DurationConnect = response.stats.durations.connect,
				DurationSSLHandshake = response.stats.durations.SSLHandshake,
				DurationMakeRequest = response.stats.durations.makeRequest,
				DurationReceiveResponse = response.stats.durations.receiveResponse,
				RoundTripTime = response.stats.durations.roundTripTime,
			},
			HttpError = Enum.HttpError.OK,
		}
	elseif response.type == "internal-error" then
		return {
			ErrorMessage = response.errorMessage,
			HttpError = response.httpError,
		}
	else
		error(("unsupported response type `%s`"):format(tostring(response.type)))
	end
end

return RequestFormatter
