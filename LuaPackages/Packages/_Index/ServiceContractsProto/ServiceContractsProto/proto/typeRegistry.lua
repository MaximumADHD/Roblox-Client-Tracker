--!strict
local TypeRegistry = {}
TypeRegistry.__index = TypeRegistry

local message = require(script.Parent.message)

export type TypeRegistry = typeof(setmetatable(
	{} :: {
		_types: { [string]: message.Message<unknown, unknown> },
	},
	TypeRegistry
))

function TypeRegistry.new(inputTypes: { message.Message<any, any> })
	local types = {}

	for _, inputType in inputTypes do
		types[inputType.descriptor.fullName] = inputType
	end

	return setmetatable({
		_types = types,
	}, TypeRegistry)
end

function TypeRegistry.findMessage(self: TypeRegistry, fullName: string): message.Message<unknown, unknown>?
	return self._types[fullName]
end

function TypeRegistry.register(self: TypeRegistry, inputType: message.Message<any, any>)
	self._types[inputType.descriptor.fullName] = inputType
end

local default = TypeRegistry.new({})

return {
	TypeRegistry = TypeRegistry,
	default = default,
}
