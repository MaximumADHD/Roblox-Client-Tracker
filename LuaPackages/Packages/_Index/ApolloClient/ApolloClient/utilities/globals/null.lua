local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local NULL = { __value = "null" }

export type NULL = typeof(NULL)

return {
	NULL = NULL,
	toJSBoolean = function(value)
		return Boolean.toJSBoolean(value) and value ~= NULL
	end,
}
