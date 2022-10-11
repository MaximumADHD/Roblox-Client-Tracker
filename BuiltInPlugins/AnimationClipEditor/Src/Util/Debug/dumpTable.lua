-- Debug method to dump a table recursively
local function dump(table, depth)
	if table == nil then
		return "<nil>"
	end
	local prefix = string.rep("  ", depth)
	local s = "{\n"
	for key, value in pairs(table) do
		s = s .. prefix .. "  " .. key .. ": "
		if type(value) == "table" then
			s = s .. dump(value, depth + 1)
		else
			s = s .. tostring(value) .. "\n"
		end
	end
	return s .. prefix .. "}\n"
end

local function dumpTable(table)
	print(dump(table, 0))
end

return dumpTable
