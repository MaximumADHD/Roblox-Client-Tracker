--!nocheck
local Error = {}

local DEFAULT_NAME = "Error"
Error.__index = Error
Error.__tostring = function(self)
 	return getmetatable(Error).__tostring(self)
end

function Error.new(message)
	return setmetatable({
		name = DEFAULT_NAME,
		message = message or "",
		stack = debug.traceback(nil, 2)
	}, Error)
end

return setmetatable(Error, {
	__call = function(_, ...)
		local inst = Error.new(...)
		inst.stack = debug.traceback(nil, 2)
		return inst
	end,
	__tostring = function(self)
		if self.name ~= nil then
			if self.message ~= nil then
				return string.format("%s: %s", tostring(self.name), tostring(self.message))
			end
			return tostring(self.name)
		end
		return tostring(DEFAULT_NAME)
	end
})
