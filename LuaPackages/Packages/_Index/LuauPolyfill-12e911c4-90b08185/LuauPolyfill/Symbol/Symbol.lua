--!strict
--[[
	Symbols have the type 'userdata', but when printed or coerced to a string,
	the symbol will turn into the string given as its name.

	**This implementation provides only the `Symbol()` constructor and the
	global registry via `Symbol.for_`.**

	Other behaviors, including the ability to find all symbol properties on
	objects, are not implemented.
]]
export type Symbol = typeof(newproxy(true)) & { [string]: any }

return {
	new = function(name: string?): Symbol
		local self = newproxy(true) :: any

		local wrappedName = "Symbol()"
		if name then
			wrappedName = ("Symbol(%s)"):format(name)
		end

		getmetatable(self).__tostring = function()
			return wrappedName
		end

		return (self :: any) :: Symbol
	end,
}
