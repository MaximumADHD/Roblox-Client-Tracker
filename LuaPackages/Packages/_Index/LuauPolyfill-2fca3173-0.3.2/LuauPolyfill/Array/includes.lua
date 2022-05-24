--!strict
local indexOf = require(script.Parent.indexOf)
type Array<T> = { [number]: T }

return function<T>(array: Array<T>, searchElement: any, fromIndex: number?): boolean
	return indexOf(array, searchElement, fromIndex) ~= -1
end
