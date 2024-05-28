--!strict
local LuauPolyfill = script.Parent.Parent
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
type Object = types.Object

return function<T>(t: T & (Object | Array<any>)): T
	-- Luau FIXME: model freeze better so it passes through the type constraint and doesn't erase
	return (table.freeze(t :: any) :: any) :: T
end
