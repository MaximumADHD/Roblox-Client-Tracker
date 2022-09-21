local LuauSerializer = require(script.LuauSerializer)

export type LuauModuleSerializer = {
	serialize: (self: LuauModuleSerializer, object: any) -> string,
	_inner: LuauSerializer.LuauSerializer,
}

type LuauModuleSerializerStatic = {
	new: () -> LuauModuleSerializer,
}
local LuauModuleSerializer: LuauModuleSerializer & LuauModuleSerializerStatic = {} :: any

local LuauModuleSerializerMetatable = { __index = LuauModuleSerializer }

function LuauModuleSerializer.new(): LuauModuleSerializer
	return setmetatable({
		_inner = LuauSerializer.new(),
	}, LuauModuleSerializerMetatable) :: any
end

function LuauModuleSerializer:serialize(object: any): string
	return "return " .. self._inner:serialize(object) .. "\n"
end

return LuauModuleSerializer
