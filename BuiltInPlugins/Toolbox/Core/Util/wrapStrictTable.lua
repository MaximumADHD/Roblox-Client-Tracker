local enableStrict = true

local wrapStrictTable

local metatable = {
	__index = function(self, key)
		if not key then
			error("key is nil in wrapStrictTable __index")
		end
		local value = self.__tbl[key]
		if value ~= nil then
			if type(value) == "table" then
				return wrapStrictTable(value, self.__name .. "." .. key)
			end
			return value
		end
		error(("%q is not a valid key in %s"):format(tostring(key), tostring(self.__name)), 2)
	end,
}

wrapStrictTable = function(tbl, name)
	if not enableStrict then
		return tbl
	end

	name = name or ""

	return setmetatable({
		__name = name,
		__tbl = tbl,
	}, metatable)
end

return wrapStrictTable
