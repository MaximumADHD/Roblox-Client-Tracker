--!strict
type Object = { [string]: any }
type Array<T> = { [number]: T }

local function isfrozen(t: Object | Array<any>): boolean
	return table.isfrozen(t)
end

return isfrozen
