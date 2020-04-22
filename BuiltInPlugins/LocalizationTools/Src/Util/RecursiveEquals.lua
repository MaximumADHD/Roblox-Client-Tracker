--[[
	Compares two tables recursively returns true if they've got the same elements.
	Compares non-table entries with ==, compares table entries with a recursive call.
]]
local function RecursiveEquals(A, B)
	if type(A) ~= type(B) then
		return false
	end

	if type(A) ~= "table" then
		return A == B
	end

	for k, v in pairs(A) do
		if not RecursiveEquals(v, B[k]) then
			return false
		end
	end

	for k, v in pairs(B) do
		if not RecursiveEquals(v, A[k]) then
			return false
		end
	end

	return true
end

return RecursiveEquals
