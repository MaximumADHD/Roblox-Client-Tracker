local Number = require(script.Parent.Parent.Parent.LuauPolyfill).Number

local function toBeNaN(a)
	local success = Number.isNaN(a)
	if success then
		return { pass = success }
	end
	return {
		pass = false,
		message = ('expected: NaN (number), got: "%s" (%s) instead'):format(tostring(a), typeof(a)),
	}
end

return toBeNaN
