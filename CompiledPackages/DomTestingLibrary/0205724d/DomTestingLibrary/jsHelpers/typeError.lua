-- ROBLOX upstream: no upstream
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
type TypeError = LuauPolyfill.Error

local TypeError = {}
TypeError.__index = TypeError
function TypeError.new(message: string?): TypeError
	return (
		setmetatable({
			name = "TypeError",
			message = message or "",
			stack = debug.traceback(nil, 2),
		}, Error) :: any
	) :: TypeError
end

return TypeError
