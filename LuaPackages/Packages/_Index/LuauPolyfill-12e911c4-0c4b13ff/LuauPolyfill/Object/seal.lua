--!strict
type Object = { [string]: any }

local function seal<T>(t: Object): T
	return (table.freeze(t) :: any) :: T
end

return seal
