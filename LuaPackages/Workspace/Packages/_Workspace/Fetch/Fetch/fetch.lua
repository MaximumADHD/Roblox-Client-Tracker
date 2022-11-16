-- spec: https://fetch.spec.whatwg.org/#dom-global-fetch
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

local ResponseModule = require(script.Parent.Response)
local Response = ResponseModule.Response
type Response = ResponseModule.Response

local RequestModule = require(script.Parent.Request)
local Request = RequestModule.Request
type Request = RequestModule.Request
type RequestInfo = RequestModule.RequestInfo
type RequestInit = RequestModule.RequestInit

type HttpResponse = {
	Success: boolean,
	StatusCode: number,
	StatusMessage: string,
	Headers: Object,
	Body: string,
}

type HttpError = {
	ErrorMessage: string,
	HttpError: Enum.HttpError,
}

local function parseResponse(response: HttpResponse): Response
	local body = response.Body

	return Response.new(body, {
		status = response.StatusCode,
		statusText = response.StatusMessage,
		headers = response.Headers,
	})
end

local function buildFetch(HttpService: HttpService)
	local function fetch(input: RequestInfo, init: RequestInit): Promise<Response>
		return Promise.new(function(resolve, reject)
			local ok, requestObjectOrError = pcall(function()
				return Request.new(input, init)
			end)
			if not ok then
				-- if the pcall fails, then this is an error message
				reject(Error.new((requestObjectOrError :: any) :: string))
				return
			end

			local requestObject: Request = requestObjectOrError

			local internalRequest = HttpService:RequestInternal({
				Url = requestObject.url,
				Method = requestObject.method,
				Body = requestObject.body,
				Headers = requestObject.headers.headerList,
				CachePolicy = requestObject.cache,
			}) :: HttpRequest

			internalRequest:Start(function(success, response)
				if not success then
					requestObject.signal:fire()
					reject(Error.new((response :: HttpError).ErrorMessage))
				else
					local responseObject = parseResponse(response :: HttpResponse)
					resolve(responseObject)
				end

				return
			end)
		end)
	end

	return fetch
end

return buildFetch
