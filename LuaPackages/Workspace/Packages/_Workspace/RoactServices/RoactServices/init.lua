local Types = require(script.RoactServicesTypes)

export type Context<T = any> = Types.Context<T>
export type StaticService<T> = Types.StaticService<T>
export type Service<T> = Types.Service<T>

return {
	RoactServices = require(script.RoactServices),
	RoactServicesContext = require(script.RoactServicesContext),
}
