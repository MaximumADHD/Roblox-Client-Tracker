export type RequestOptions = {
	postBody: string?,
	maxRetryCount: number?,
	timeout: number?,
	cachePolicy: Enum.HttpCachePolicy?,
	priority: number?,
	headers: {[string]: string}?,
	requestType: string?,
}

export type Request<T = any> = (url: string, method: string, options: RequestOptions?) -> T

return {}
