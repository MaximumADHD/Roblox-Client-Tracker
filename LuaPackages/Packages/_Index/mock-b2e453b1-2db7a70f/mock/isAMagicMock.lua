local symbols = require(script.Parent.symbols)

return function(value)
	local meta = getmetatable(value)
	if meta then
		return meta[symbols.isMagicMock] ~= nil
	end

	return false
end
