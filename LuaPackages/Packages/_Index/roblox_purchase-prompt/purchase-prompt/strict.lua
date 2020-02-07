--[[
	Locks a table from indexing or setting any keys that are not already defined

	Useful for constants or any unchanging data, where indexing non-existent values
	is always a mistake
]]
local function invalidKey(self, key)
	local message = ("%q (%s) is not a valid member of %s"):format(
		tostring(key),
		typeof(key),
		tostring(self)
	)

	error(message, 2)
end

local function strict(t, name)
	return setmetatable(t, {
		__index = invalidKey,
		__newindex = invalidKey,
		__tostring = function()
			return name
		end,
	})
end

return strict