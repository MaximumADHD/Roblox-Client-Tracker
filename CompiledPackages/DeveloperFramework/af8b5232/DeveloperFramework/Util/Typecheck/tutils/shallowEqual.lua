--[[
	Takes two tables A and B, returns if they have the same key-value pairs
	Except ignored keys
]]
-- TODO (AleksandrSl 16/07/2024): Candidate to replace with Dash. Have to check whether someone uses ignore parameter.
-- If we can't we need to actually add tests for ignore and that it checks shallow equality, not strict equality
return function(A, B, ignore)
	if not A or not B then
		return false
	elseif A == B then
		return true
	end
	if not ignore then
		ignore = {}
	end

	for key, value in pairs(A) do
		if B[key] ~= value and not ignore[key] then
			return false
		end
	end
	for key, value in pairs(B) do
		if A[key] ~= value and not ignore[key] then
			return false
		end
	end

	return true
end
