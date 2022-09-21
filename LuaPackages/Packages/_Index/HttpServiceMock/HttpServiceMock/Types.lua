export type Headers = { [string]: string }

export type RequestOptions = {
	Url: string,
	Method: string?,
	Headers: Headers?,
	Body: string?,
}

export type RequestInternalOptions = RequestOptions & {
	Timeout: number?,
	Priority: number?,
	CachePolicy: Enum.HttpCachePolicy?,
	RequestType: Enum.HttpRequestType?,
}
export type StatsInfo = {
	WasRequestRetried: boolean,
	DurationInQueue: number,
	DurationNameLookup: number,
	DurationConnect: number,
	DurationSSLHandshake: number,
	DurationMakeRequest: number,
	DurationReceiveResponse: number,
	RoundTripTime: number,
}
export type InternalSuccessResponse = {
	StatusCode: number,
	StatusMessage: string,
	Stats: StatsInfo,
	IsCached: boolean,
	Body: string?,
	Headers: Headers,
	HttpError: Enum.HttpError,

	-- use to differentiate with `InternalRequestFailure`
	Success: nil,
	ErrorMessage: nil,
}
export type InternalRequestFailure = {
	ErrorMessage: string,
	HttpError: Enum.HttpError,

	-- use to differentiate with `InternalSuccessResponse` and `Response`
	Stats: nil,
	Success: nil,
}

export type InternalRequest = {
	Type: "internal",
	Url: string,
	Method: string,
	Headers: Headers,
	Body: string?,
	Timeout: number?,
	Priority: number?,
	CachePolicy: Enum.HttpCachePolicy?,
	RequestType: Enum.HttpRequestType?,
}
export type Request = InternalRequest | {
	Type: "get" | "post" | "request",
	Url: string,
	Method: string,
	Headers: Headers,
	Body: string?,
	Timeout: nil,
	Priority: nil,
	CachePolicy: nil,
	RequestType: nil,
}

export type RequestAsyncResponse = {
	Success: boolean,
	StatusCode: number,
	StatusMessage: string,
	Headers: Headers,
	Body: string,

	-- use to differentiate with `InternalRequestFailure`
	ErrorMessage: nil,
	-- use to differentiate with `InternalSuccessResponse`
	Stats: nil,
}
export type Response = InternalSuccessResponse | InternalRequestFailure | RequestAsyncResponse
export type RequestResult<R = Response> =
	{ type: "response", response: R }
	| { type: "error", error: any }
	| { type: "internal-error", error: string }
	| { type: "suspend" }

return {}
