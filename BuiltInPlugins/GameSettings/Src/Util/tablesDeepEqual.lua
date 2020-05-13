local function tablesDeepEqual(t0, t1)
	if typeof(t0) ~= typeof(t1) then return false end
	-- Doesn't help in the case of dictionaries, but avoids needing to double iterate over t0/t1 for lists
	if #t0 ~= #t1 then return false end

	for k,v in pairs(t1) do
		if typeof(v) ~= typeof(t0[k]) then
			return false
		end
	end

	for k,v in pairs(t0) do
		-- Duplicated from above loop since t0 may have values not in t1
		if typeof(v) ~= typeof(t1[k]) then
			return false
		end

		if typeof(v) == "table" then
			if not tablesDeepEqual(v, t1[k]) then
				return false
			end
		else
			if v ~= t1[k] then
				return false
			end
		end
	end

	return true
end

return tablesDeepEqual