local isValidLuauIdentifier = require(script.isValidLuauIdentifier)

local function sortWithFirstElement(a: { [number]: string }, b: { [number]: string })
	return a[1] < b[1]
end

export type LuauSerializer = {
	serialize: (self: LuauSerializer, object: any) -> string,
	_indentation: string,
	_indentationLevel: number,
	_serializeTableKey: (self: LuauSerializer, key: any) -> string,
	_ident: (self: LuauSerializer) -> string,
}
type LuauSerializerStatic = {
	new: () -> LuauSerializer,
}
local LuauSerializer: LuauSerializer & LuauSerializerStatic = {} :: any

local LuauSerializerMetatable = { __index = LuauSerializer }

function LuauSerializer.new(): LuauSerializer
	return setmetatable({
		_indentation = "\t",
		_indentationLevel = 0,
	}, LuauSerializerMetatable) :: any
end

function LuauSerializer:serialize(object: any): string
	local objectType = typeof(object)

	if objectType == "string" then
		return ("%q"):format(object)
	elseif objectType == "number" then
		return tostring(object)
	elseif objectType == "boolean" then
		return if object then "true" else "false"
	elseif objectType == "table" then
		if next(object) == nil then
			return "{}"
		end

		local elements = { "{" }

		self._indentationLevel += 1
		local currentIdentation = self:_ident()

		local arrayKeys = {}
		local lastIndex: number? = nil
		for index, value in ipairs(object) do
			arrayKeys[index] = true
			if lastIndex ~= nil and (index ~= lastIndex + 1) then
				for _missingIndex = lastIndex + 1, index do
					table.insert(elements, currentIdentation .. self:serialize(nil) .. ",")
				end
			end
			table.insert(elements, currentIdentation .. self:serialize(value) .. ",")
			lastIndex = index
		end

		local keyValuePairs = {}
		for key, value in pairs(object) do
			if arrayKeys[key] then
				continue
			end

			local serializedKey = self:_serializeTableKey(key)
			local serializedValue = self:serialize(value)

			table.insert(keyValuePairs, { serializedKey, serializedValue })
		end

		table.sort(keyValuePairs, sortWithFirstElement)

		for _, pair in ipairs(keyValuePairs) do
			table.insert(elements, ("%s%s = %s,"):format(currentIdentation, pair[1], pair[2]))
		end

		self._indentationLevel -= 1
		table.insert(elements, self:_ident() .. "}")

		return table.concat(elements, "\n")
	elseif objectType == "EnumItem" then
		return ("Enum.%s.%s"):format(tostring(object.EnumType), object.Name)
	elseif objectType == "Enum" then
		return "Enum." .. tostring(object)
	elseif objectType == "nil" then
		return "nil"
	else
		error(("unable to serialize value of type `%s`"):format(objectType))
	end
end

function LuauSerializer:_serializeTableKey(key: any): string
	if typeof(key) == "string" and isValidLuauIdentifier(key) then
		return key
	else
		return "[" .. self:serialize(key) .. "]"
	end
end

function LuauSerializer:_ident(): string
	return self._indentation:rep(self._indentationLevel)
end

return LuauSerializer
