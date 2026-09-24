--[[
	Takes a table and returns the field count
]]
-- TODO (AleksandrSl 19/07/2024): Replace with count from Dash.
return function(t)
	local fieldCount = 0
	for _ in pairs(t) do
		fieldCount = fieldCount + 1
	end
	return fieldCount
end
