-- spec: https://fetch.spec.whatwg.org/#response
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
type Object = LuauPolyfill.Object

local HeadersModule = require(script.Parent.Headers)
local Headers = HeadersModule.Headers
type HeadersInit = HeadersModule.HeadersInit
type Headers = HeadersModule.Headers

local BodyModule = require(script.Parent.Body)
local Body = BodyModule.Body
type Body = BodyModule.Body
type BodyInit = BodyModule.BodyInit

export type ResponseInit = {
	status: number?,
	statusText: string?,
	headers: HeadersInit?,
}

type ResponseType = "basic" | "cors" | "default" | "error" | "opaque" | "opaqueredirect"

export type Response = Body & {
	error: () -> Response,
	redirect: (string, number?) -> Response,
	json: (any, ResponseInit?) -> Response,
	type: ResponseType,
	url: string,
	redirected: boolean,
	status: number,
	ok: boolean,
	statusText: string,
	headers: Headers,
	clone: (self: Response) -> Response,
}

type BodyWithType = any

local Response = setmetatable({}, { __index = Body })
Response.__index = Response

function Response.new(body: BodyInit?, init_: ResponseInit?): Response
	local init: ResponseInit = init_ or {}
	local self = setmetatable(Body.new(body), Response) :: any

	self.status = init.status or 200
	self.statusText = init.statusText or ""
	self.headers = Headers.new(init.headers or {})
	self.headers.guard = "response"
	self.type = "text"
	self.url = ""
	self.redirected = false
	self.ok = self.status >= 200 and self.status < 300
	return self :: Response
end

function Response.error(): Response
	local response = Response.new(nil, {
		status = 0,
	})
	response.type = "error"
	return response
end

function Response.redirect(url: string, status: number?): Response
	error("Response.redirect not implemented")
end

--[[
	deviation from spec. This is also called Response.json, but we cannot override
	arguments in luau.
]]
function Response.STATIC_json(data: any, init: ResponseInit): Response
	error("Response.json static method not implemented")
end

function Response:clone()
	return Response.new(self.body, {
		status = self.status,
		statusText = self.statusText,
		headers = self.headers.headerList,
	})
end

return {
	Response = Response,
}
