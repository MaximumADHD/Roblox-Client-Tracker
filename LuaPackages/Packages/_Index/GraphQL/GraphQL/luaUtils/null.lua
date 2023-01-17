-- ROBLOX deviation: no distinction between undefined and null in Lua so we need to go around this with custom NULL like constant
local NULL = (
	setmetatable({
		__NULL_IDENTIFIER__ = "__GRAPHQL_NULL_OBJECT__",
	}, {
		-- ROBLOX deviation: mimic behavior of Object.preventExtension
		__newindex = function(self, key, value)
			local message = ("%q (%s) is not a valid member of %s"):format(
				tostring(key),
				typeof(key),
				"null"
			)

			error(message, 2)
		end,
		__metatable = false,
		__tostring = function()
			return "null"
		end,
	})
)
export type NULL = typeof(NULL)
return NULL
