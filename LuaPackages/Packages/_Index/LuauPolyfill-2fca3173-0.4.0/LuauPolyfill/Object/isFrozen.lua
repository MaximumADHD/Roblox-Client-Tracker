--!strict
local LuauPolyfill = script.Parent.Parent
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
type Object = types.Object

return function(t: Object | Array<any>): boolean
	return table.isfrozen(t)
end
