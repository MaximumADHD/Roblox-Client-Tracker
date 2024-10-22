local symbols = require(script.Parent.symbols)

return function(predicate)
	assert(type(predicate) == "function", "Mock Error: Mock.predicate must be given a function")

	return setmetatable({
		[symbols.isPredicate] = true,
		predicate = predicate,
	}, {
		__tostring = function()
			return "<Predicate>"
		end,
	})
end
