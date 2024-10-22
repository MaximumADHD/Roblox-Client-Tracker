local symbols = require(script.Parent.symbols)

return function(...)
	local values = { ... }
	assert(#values > 1, "Mock Error: tuple only accepts more than 1 value.")

	return setmetatable({
		[symbols.isTuple] = true,
		values = values,
	}, {
		__tostring = function(self)
			local stringValues = {}
			for _, value in ipairs(values) do
				table.insert(stringValues, tostring(value))
			end
			return "<Tuple values=[" .. table.concat(stringValues, ", ") .. "]>"
		end,
	})
end
