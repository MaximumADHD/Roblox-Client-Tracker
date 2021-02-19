
local function subtract(set, ...)
	local new = {}

	for k, _ in pairs(set) do
		new[k] = true
	end

	for i = 1, select('#', ...) do
		new[select(i, ...)] = nil
	end

	return new
end

return subtract