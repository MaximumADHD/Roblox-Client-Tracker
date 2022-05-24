--!strict
type Table = { [string | number]: any }
-- FIXME: This should be updated to be closer to the actual
-- `Object.preventExtensions` functionality in JS. This requires additional
-- support from the VM
local function preventExtensions<T>(t: Table): T
	local name = tostring(t)

	return (
			setmetatable(t, {
				__newindex = function(self, key, value)
					local message = ("%q (%s) is not a valid member of %s"):format(tostring(key), typeof(key), name)

					error(message, 2)
				end,
				__metatable = false,
			}) :: any
		) :: T
end

return preventExtensions
