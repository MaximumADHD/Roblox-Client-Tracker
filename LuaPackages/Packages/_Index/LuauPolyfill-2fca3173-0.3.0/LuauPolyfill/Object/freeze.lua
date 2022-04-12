--!strict
type Object = { [string]: any }
type Array<T> = { [number]: T }

local function freeze<T>(t: T & (Object | Array<any>)): T
	-- Luau FIXME: model freeze better so it passes through the type constraint and doesn't erase
	return (table.freeze(t) :: any) :: T
end

return freeze
