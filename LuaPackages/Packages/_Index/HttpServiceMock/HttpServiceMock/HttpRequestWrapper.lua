local root = script.Parent
local Packages = root.Parent

local SharedUtils = require(Packages.SharedUtils)
local getDefaultValue = SharedUtils.getDefaultValue

local Types = require(root.Types)

local httpErrorCodeToMessage = {
	[Enum.HttpError.OK] = "OK",
	[Enum.HttpError.InvalidUrl] = "InvalidUrl",
	[Enum.HttpError.DnsResolve] = "DnsResolve",
	[Enum.HttpError.ConnectFail] = "ConnectFail",
	[Enum.HttpError.OutOfMemory] = "OutOfMemory",
	[Enum.HttpError.TimedOut] = "Timedout",
	[Enum.HttpError.TooManyRedirects] = "TooManyRedirects",
	[Enum.HttpError.InvalidRedirect] = "InvalidRedirect",
	[Enum.HttpError.NetFail] = "NetFail",
	[Enum.HttpError.Aborted] = "Aborted",
	[Enum.HttpError.SslConnectFail] = "SslConnectFail",
	[Enum.HttpError.SslVerificationFail] = "SslVerificationFail",
	[Enum.HttpError.Unknown] = "Unknown",
}
local DEFAULT_ERROR_CODE_MESSAGE = "Unknown"

local function completeStatsInfo(stats: {
	WasRequestRetried: boolean?,
	DurationInQueue: number?,
	DurationNameLookup: number?,
	DurationConnect: number?,
	DurationSSLHandshake: number?,
	DurationMakeRequest: number?,
	DurationReceiveResponse: number?,
	RoundTripTime: number?,
}): Types.StatsInfo
	return {
		WasRequestRetried = getDefaultValue(stats.WasRequestRetried, false),
		DurationInQueue = stats.DurationInQueue or 0,
		DurationNameLookup = stats.DurationNameLookup or 0,
		DurationConnect = stats.DurationConnect or 0,
		DurationSSLHandshake = stats.DurationSSLHandshake or 0,
		DurationMakeRequest = stats.DurationMakeRequest or 0,
		DurationReceiveResponse = stats.DurationReceiveResponse or 0,
		RoundTripTime = stats.RoundTripTime or 0,
	}
end

type PromiseLike<T> = {
	cancel: (PromiseLike<T>) -> (),
	andThen: (PromiseLike<T>, ((T) -> ...(nil | T | PromiseLike<T>))?) -> PromiseLike<T>,
}
type ProcessSuccess = (true, Types.InternalSuccessResponse) -> ()
type ProcessFailure = (false, Types.InternalRequestFailure) -> ()
-- FIXME: once Luau supports function type resolution
-- type ProcessResponse = ProcessSuccess & ProcessFailure
type ProcessResponse = (boolean, Types.InternalSuccessResponse | Types.InternalRequestFailure) -> ()
type PartialInternalResponse = {
	StatusCode: number,
	StatusMessage: string,
	Stats: Types.StatsInfo?,
	Body: string?,
	Headers: Types.Headers?,
	IsCached: boolean?,
	HttpError: Enum.HttpError?,
	-- necessary to be able to branch between a response and the error object
	ErrorMessage: nil,
}
type RequestResult = Types.RequestResult<
	{ HttpError: Enum.HttpError, ErrorMessage: string } | PartialInternalResponse
>

export type HttpRequestWrapper = {
	Start: (self: HttpRequestWrapper, ProcessResponse) -> (),
	Cancel: (self: HttpRequestWrapper) -> (),
	_request: Types.InternalRequest,
	_requestImplementation: (Types.InternalRequest, source: string) -> PromiseLike<RequestResult>,
	_cancelCallbacks: { () -> () },
}
type HttpRequestWrapperStatic = {
	new: (
		request: Types.InternalRequest,
		requestImplementation: (Types.InternalRequest, source: string) -> PromiseLike<RequestResult>
	) -> HttpRequestWrapper,
}

local HttpRequestWrapper: HttpRequestWrapper & HttpRequestWrapperStatic = {} :: any
local HttpRequestWrapperMetatable = { __index = HttpRequestWrapper }

function HttpRequestWrapper.new(
	request: Types.InternalRequest,
	requestImplementation: (
		Types.InternalRequest,
		source: string
	) -> PromiseLike<RequestResult>
): HttpRequestWrapper
	return setmetatable({
		_request = request,
		_requestImplementation = requestImplementation,
		_cancelCallbacks = {},
	}, HttpRequestWrapperMetatable) :: any
end

function HttpRequestWrapper:Start(processResult: ProcessResponse)
	local called = false
	local function processOnce(success, response)
		if called then
			return
		end
		called = true
		processResult(success, response)
	end

	local function handleResult(requestResult: RequestResult)
		if requestResult.type == "response" then
			local result = requestResult.response
			if result.HttpError == nil or result.HttpError == Enum.HttpError.OK then
				local response = result :: PartialInternalResponse
				processOnce(true, {
					StatusCode = response.StatusCode,
					StatusMessage = response.StatusMessage,
					Stats = completeStatsInfo(response.Stats or {}),
					Body = response.Body,
					Headers = response.Headers or {},
					IsCached = getDefaultValue(response.IsCached, false),
					HttpError = response.HttpError or Enum.HttpError.OK,
				})
			else
				processOnce(false, {
					ErrorMessage = "HttpError: " .. DEFAULT_ERROR_CODE_MESSAGE,
					HttpError = Enum.HttpError.Unknown,
				})
			end
		elseif requestResult.type == "error" then
			processOnce(false, {
				ErrorMessage = "HttpError: " .. tostring(requestResult.error),
				HttpError = Enum.HttpError.Unknown,
			})
		elseif requestResult.type == "internal-error" then
			error(requestResult.error)
		elseif requestResult.type == "suspend" then
			processOnce(false, {
				ErrorMessage = "HttpError: request was delayed until the record-playback logic ended",
				HttpError = Enum.HttpError.Unknown,
			})
		else
			error(("unknown result of type `%s`"):format(tostring(requestResult.type)))
		end
	end

	local requestSource = debug.traceback(nil, 2)
	local promise = self._requestImplementation(self._request, requestSource):andThen(handleResult)

	local function cancel()
		local httpError = Enum.HttpError.Aborted
		processOnce(false, {
			ErrorMessage = "HttpError: "
				.. (httpErrorCodeToMessage[httpError] or DEFAULT_ERROR_CODE_MESSAGE),
			HttpError = httpError,
		})
		promise:cancel()
	end

	table.insert(self._cancelCallbacks, cancel)
end

function HttpRequestWrapper:Cancel()
	local cancelCallbacks = self._cancelCallbacks
	self._cancelCallbacks = {}
	for _, cancel in ipairs(cancelCallbacks) do
		cancel()
	end
end

return HttpRequestWrapper
