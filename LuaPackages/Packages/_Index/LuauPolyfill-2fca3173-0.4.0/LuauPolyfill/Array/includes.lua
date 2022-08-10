--!strict
local LuauPolyfill = script.Parent.Parent
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
local indexOf = require(script.Parent.indexOf)

return function<T>(array: Array<T>, searchElement: T, fromIndex: number?): boolean
	return indexOf(array, searchElement, fromIndex) ~= -1
end
