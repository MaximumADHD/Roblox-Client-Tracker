-- spec: https://fetch.spec.whatwg.org/#headers
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>

type Record<K, V> = {
	[K]: V,
}

export type HeadersInit = Record<string, string> | Array<Array<string>>
export type HeaderList = Record<string, string>

type HeadersInterface = {
	headerList: HeaderList,
	guard: string,
	append: (self: Headers, name: string, value: string) -> (),
	delete: (self: Headers, name: string) -> (),
	get: (self: Headers, name: string) -> string?,
	has: (self: Headers, name: string) -> boolean,
	set: (self: Headers, name: string, value: string) -> (),
}

export type Headers = typeof(setmetatable(
	{} :: HeadersInterface,
	{} :: {
		__iter: (self: Headers) -> (<K, V>({ [K]: V }, K?) -> (K?, V), HeaderList),
	}
))

local Headers = {}
Headers.__index = Headers

function Headers.new(headers: HeadersInit?): Headers
	local self = {}

	local headerList
	if Array.isArray(headers) then
		headerList = {}
		for _, headerPair in headers :: Array<Array<string>> do
			headerList[headerPair[1]] = headerPair[2]
		end
	else
		headerList = headers :: HeaderList or {}
	end

	self.headerList = headerList
	self.guard = "none"

	setmetatable(self, Headers)
	return self :: any
end

function Headers:append(name: string, value: string)
	if self.guard == "immutable" then
		error("TypeError: tried to append header to immutable Headers object")
	end

	self.headerList[name] = value
end

function Headers:delete(name: string)
	if self.guard == "immutable" then
		error("TypeError: tried to delete key on immutable Headers object")
	end

	if not self:has(name) then
		return
	end

	self.headerList[name] = nil
end

function Headers:get(name: string): string?
	return self.headerList[name]
end

function Headers:has(name: string): boolean
	return self.headerList[name] ~= nil
end

function Headers:set(name: string, value: string)
	if self.guard == "immutable" then
		error("TypeError: tried to set key on immutable Headers object")
	end
	self.headerList[name] = value
end

function Headers.__iter(self: Headers): (<K, V>({ [K]: V }, K?) -> (K?, V), HeaderList)
	return next, self.headerList
end

return {
	Headers = Headers,
}
