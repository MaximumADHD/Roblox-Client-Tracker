
local function intersect(...)
	local new = {}
	local argc = select('#', ...)
	local first = select(1, ...)

	for k, _ in pairs(first) do
		local intersects = true

		for i = 2, argc do
			if select(i, ...)[k] == nil then
				intersects = false
				break
			end
		end

		if intersects then
			new[k] = true
		end
	end

	return new
end

return intersect