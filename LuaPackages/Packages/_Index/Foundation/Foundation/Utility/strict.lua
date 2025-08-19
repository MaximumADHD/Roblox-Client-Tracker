local function strict(t, name: string?)
	local strictName = name or tostring(t)

	return setmetatable(t, {
		__index = function(_self, key)
			local message = ("%q (%s) is not a valid member of %s"):format(tostring(key), typeof(key), strictName)

			error(message, 2)
		end,

		__newindex = function(_self, key)
			local message = ("%q (%s) is not a valid member of %s"):format(tostring(key), typeof(key), strictName)

			error(message, 2)
		end,
	}) :: typeof(t)
end

return strict
