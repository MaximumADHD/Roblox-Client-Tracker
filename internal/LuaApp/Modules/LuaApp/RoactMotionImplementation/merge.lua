--[[
	Merges a list of tables into a new table.
]]

return function(...)
	local new = {}

	for i = 1, select("#", ...) do
		for key, value in pairs(select(i, ...)) do
			new[key] = value
		end
	end

	return new
end