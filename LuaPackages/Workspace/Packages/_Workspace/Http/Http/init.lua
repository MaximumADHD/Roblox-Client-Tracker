local Requests = require(script.Requests)

export type RequestOptions = Requests.RequestOptions
export type Response<T = any> = Requests.Response<T>
export type Request<T = any> = Requests.Request<T>

return {
	Requests = Requests,
	Url = require(script.Url),
}
