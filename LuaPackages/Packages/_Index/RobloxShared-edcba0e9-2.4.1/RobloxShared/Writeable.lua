-- ROBLOX NOTE:  no upstream: replaces node js writeable stream API

export type Writeable = {
	isTTY: boolean?,
	write: (self: Writeable, data: string) -> (),
}

local Writeable = {}
Writeable.__index = Writeable

function Writeable.new(options: { write: (data: string) -> () }): Writeable
	local self = setmetatable({}, Writeable)
	self._writeFn = if options ~= nil and typeof(options.write) == "function" then options.write else print
	self.isTTY = false
	return (self :: any) :: Writeable
end

function Writeable:write(data: string)
	self._writeFn(data)
end

return {
	Writeable = Writeable,
}
