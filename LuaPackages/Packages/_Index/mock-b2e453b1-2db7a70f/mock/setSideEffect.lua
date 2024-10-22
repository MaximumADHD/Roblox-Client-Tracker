local symbols = require(script.Parent.symbols)

return function(mock, sideEffectValue)
	local meta = getmetatable(mock)
	local sideEffect = nil
	if sideEffectValue then
		sideEffect = { value = sideEffectValue, calls = 0 }
	end

	meta[symbols.SideEffect] = sideEffect
end
