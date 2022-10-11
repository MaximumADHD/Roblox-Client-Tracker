local deepEqual = require(script.Parent.Parent.luaUtils.deepEqual)

local function toEqual(a: any, b: any)
	local success, innerMessageTemplate = deepEqual(a, b)

	local message
	if not success then
		message = innerMessageTemplate:gsub("{1}", "received"):gsub("{2}", "expected")
	else
		message = ("expected: not %s\nreceived:     %s"):format(tostring(b), tostring(a))
	end

	return {
		pass = success,
		message = message,
	}
end

return toEqual
