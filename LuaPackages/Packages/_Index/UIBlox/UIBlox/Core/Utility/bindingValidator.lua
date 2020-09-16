-- Validator for RoactBinding props
-- expectedType: meta type functions of `t` (e.g. `t.number`)

local function bindingValidator(expectedType)
	return function(binding)
		local bindingType = string.match(tostring(binding), "RoactBinding")

		if typeof(binding) ~= "table" or not bindingType then
			warn(string.format("RoactBinding expected, got %s", typeof(binding)))
			return false
		end

		local success, value = pcall(function()
			return binding:getValue()
		end)

		if not success then
			warn("getValue() not defined")
			return false
		end

		local valueSuccess, valueErrMsg = expectedType(value)
		if not valueSuccess then
			warn(string.format("RoactBinding value: %s", valueErrMsg))
			return false
		end

		return true
	end
end

return bindingValidator
