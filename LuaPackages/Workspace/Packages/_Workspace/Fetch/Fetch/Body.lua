-- spec: https://fetch.spec.whatwg.org/#body
local HttpService = game:GetService("HttpService")
local Packages = script.Parent.Parent

local Promise = require(Packages.Promise)

local LuauPolyfill = require(Packages.LuauPolyfill)
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

export type ReadableStream = any
export type ArrayBuffer = any
export type Blob = any
export type FormData = any
export type BufferSource = any
export type URLSearchParams = any
export type XMLHttpRequestBodyInit = Blob | BufferSource | FormData | URLSearchParams | string
-- export type BodyInit = ReadableStream | XMLHttpRequestBodyInit
-- deviation from spec: Roblox HttpService only supports Body with string type
export type BodyInit = string

type RequestOrResponse = any

export type Body = {
	body: ReadableStream?,
	bodyUsed: boolean,
	arrayBuffer: (self: RequestOrResponse) -> Promise<ArrayBuffer>,
	blob: (self: RequestOrResponse) -> Promise<Blob>,
	formData: (self: RequestOrResponse) -> Promise<FormData>,
	json: (self: RequestOrResponse) -> Promise<any>,
	text: (self: RequestOrResponse) -> Promise<string>,
}

local Body = {}
Body.__index = Body

function Body.new(body: BodyInit?): Body
	local self = {}

	if type(body) == "string" then
		self.body = body
	elseif body == nil then
		self.body = nil :: any
	else
		error(string.format("Expected string or nil as the first argument to Body.new(), but got: %s", type(body)))
	end

	self.bodyUsed = false
	setmetatable(self, Body)
	return self :: any
end

function Body:arrayBuffer(): Promise<ArrayBuffer>
	return Promise.new(function(_resolve, reject)
		reject("arrayBuffer not implemented")
		return
	end)
end

function Body:blob(): Promise<Blob>
	return Promise.new(function(_resolve, reject)
		reject("blob not implemented")
		return
	end)
end

function Body:formData(): Promise<FormData>
	return Promise.new(function(_resolve, reject)
		reject("formData not implemented")
		return
	end)
end

function Body:json(): Promise<any>
	return Promise.new(function(resolve, reject)
		if self._json then
			resolve(self._json)
			return
		end

		local ok, result = pcall(function()
			return HttpService:JSONDecode(self.body)
		end)
		if not ok then
			reject(
				"Failed to decode response body as JSON. JSON decoding is only supported for Content-Type = application/json"
			)
		else
			-- Cache json result because decoding is expensive
			self._json = result
			resolve(result)
		end
		return
	end)
end

function Body:text(): Promise<string>
	return Promise.new(function(resolve, _reject)
		resolve(self.body or "")
	end)
end

return {
	Body = Body,
}
