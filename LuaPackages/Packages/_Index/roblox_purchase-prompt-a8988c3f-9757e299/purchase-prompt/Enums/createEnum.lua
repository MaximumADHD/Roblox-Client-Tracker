--[[
	An implementation of an enumerated type in Lua. Creates enumerated
	types with uniquely identifiable values (using symbol)

	Note that resulting enum object does not associate ordinals with its
	values, and cannot be iterated through. It can, however, test if a provided
	value is a member of its set of values with the `isMember` function

	This is valuable for the purchase prompt because it relies heavily on
	enumerated values to determine things like state and which errors occurred.
]]
local Root = script.Parent.Parent
local Symbol = require(Root.Symbols.Symbol)
local strict = require(Root.strict)

--[[
	Returns a new enum type with the given name.
]]
local function createEnum(enumName, values)
	assert(typeof(enumName) == "string", "Bad argument #1, expected string")
	assert(typeof(values) == "table", "Bad argument #2, expected list of values")

	local enumInternal = {}

	for _, valueName in ipairs(values) do
		assert(valueName ~= "isMember", "Shadowing 'isMember' function is not allowed")
		assert(typeof(valueName) == "string", "Only string names are supported for enum types")

		local enumValue = Symbol.named(valueName)
		local asString = ("%s.%s"):format(enumName, valueName)
		getmetatable(enumValue).__tostring = function()
			return asString
		end

		enumInternal[valueName] = enumValue
	end

	function enumInternal.isMember(value)
		if typeof(value) ~= "userdata" then
			return false
		end

		for _, enumeratedValue in pairs(enumInternal) do
			if value == enumeratedValue then
				return true
			end
		end

		return false
	end

	local enum = newproxy(true)
	getmetatable(enum).__index = enumInternal

	return strict(enumInternal, enumName)
end

return createEnum