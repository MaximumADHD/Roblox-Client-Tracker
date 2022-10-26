local CorePackages = game:GetService("CorePackages")
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)

type Promise<T> = LuauPolyfill.Promise<T>

export type RequestOptions = {
	postBody: string?,
	maxRetryCount: number?,
	timeout: number?,
	cachePolicy: Enum.HttpCachePolicy?,
	priority: number?,
	headers: {[string]: string}?,
	requestType: string?,
}

export type Response<T = any> = {
	responseCode: number,
	requestUrl: string,
	responseTimeMs: number,
	isJSONValid: boolean,
	responseBody: T,
}

export type Request<T = any> = (url: string, method: string, options: RequestOptions?) -> T

return {}
