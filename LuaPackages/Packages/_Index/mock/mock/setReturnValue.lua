local symbols = require(script.Parent.symbols)

return function(mock, returnValue)
	local meta = getmetatable(mock)
	meta[symbols.ReturnValue] = { returnValue }
end
