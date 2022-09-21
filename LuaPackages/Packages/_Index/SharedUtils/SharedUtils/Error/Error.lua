export type Error = {
	message: string,
	stack: string,
	toString: (self: Error) -> string,
}

local Error = {}
local ErrorMetatable = {
	__index = Error,
	__tostring = function(self)
		return self:toString()
	end,
}

function Error.new(message: string, stackOffset: number?): Error
	return setmetatable({
		message = message,
		stack = debug.traceback(nil, 2 + if stackOffset == nil then 0 else stackOffset),
	}, ErrorMetatable) :: any
end

function Error:toString(): string
	return self.message
end

return Error
