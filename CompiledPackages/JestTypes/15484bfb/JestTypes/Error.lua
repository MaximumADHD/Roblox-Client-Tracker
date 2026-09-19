export type Error = {
	message: string,
	name: string,
	stack: string?,
}

local Error = {}
Error.__index = Error

function Error.new(message: string?): Error
	local self = setmetatable({}, Error) :: any
	self.message = message or ""
	self.name = "Error"
	self.stack = debug.traceback(message, 2)
	return (self :: any) :: Error
end

function Error.__tostring(self: Error)
	if self.name and self.message and #self.message > 0 then
		return self.name .. ": " .. self.message
	elseif self.name then
		return self.name
	end
	return "Error"
end

return Error
