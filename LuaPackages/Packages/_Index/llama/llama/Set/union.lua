
local function union(...)
	local new = {}

	for i = 1, select('#', ...) do
		for k, _ in pairs(select(i, ...)) do
			new[k] = true
		end
	end

	return new
end

return union