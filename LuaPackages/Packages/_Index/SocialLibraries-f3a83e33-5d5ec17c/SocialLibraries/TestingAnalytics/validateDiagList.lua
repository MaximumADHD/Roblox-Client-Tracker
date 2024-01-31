local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local llama = dependencies.llama
local isEnum = require(script.Parent.Parent.Utils.isEnum)
local t = dependencies.t
local formatKeyValiationError = require(script.Parent.formatKeyValidationError)
local formatErrorForIncorrectKey = require(script.Parent.formatErrorForIncorrectKey)

local validateEvent = formatErrorForIncorrectKey(t.strictInterface({
	name = t.any,
	counter = t.optional(t.any),
}))

return function(eventList)
	llama.Dictionary.map(eventList, function(value, key)
		local keyName = if isEnum(key) then key.rawValue() else key

		assert(type(value.name) == "string", formatKeyValiationError("name", "a string", keyName))
		assert(
			type(value.counter) == "number" or value.counter == nil,
			formatKeyValiationError("counter", "nil or a number", keyName)
		)
		assert(validateEvent(value, keyName))
	end)

	return true
end
