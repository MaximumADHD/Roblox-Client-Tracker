local HeadersModule = require(script.Headers)
local Headers = HeadersModule.Headers
export type Headers = HeadersModule.Headers
export type HeadersInit = HeadersModule.HeadersInit

local RequestModule = require(script.Request)
local Request = RequestModule.Request
export type Request = RequestModule.Request
export type RequestInit = RequestModule.RequestInit

local ResponseModule = require(script.Response)
local Response = ResponseModule.Response
export type Response = ResponseModule.Response
export type ResponseInit = ResponseModule.ResponseInit

local BodyModule = require(script.Body)
local Body = BodyModule.Body
export type Body = BodyModule.Body
export type BodyInit = BodyModule.BodyInit

local buildFetch = require(script.fetch)
local fetch = buildFetch(game:GetService("HttpService"))

local AbortSignalModule = require(script.AbortSignal)
local AbortSignal = AbortSignalModule.AbortSignal
export type AbortSignal = AbortSignalModule.AbortSignal

return {
	Headers = Headers,
	Request = Request,
	Response = Response,
	Body = Body,
	fetch = fetch,
	AbortSignal = AbortSignal,
}
