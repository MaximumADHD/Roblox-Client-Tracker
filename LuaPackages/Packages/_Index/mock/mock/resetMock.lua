local symbols = require(script.Parent.symbols)

local function resetMock(mock, seenChildrenSet)
	local meta = getmetatable(mock)
	meta[symbols.Calls] = {}

	for _, child in pairs(meta[symbols.Children]) do
		if not seenChildrenSet[child] then
			seenChildrenSet[child] = true
			resetMock(child, seenChildrenSet)
		end
	end
end

return function(mock)
	-- To prevent cyclical children references causing stack overflows
	-- we use a set to determine which children we've already reset
	local seenChildrenSet = {}
	resetMock(mock, seenChildrenSet)
end
