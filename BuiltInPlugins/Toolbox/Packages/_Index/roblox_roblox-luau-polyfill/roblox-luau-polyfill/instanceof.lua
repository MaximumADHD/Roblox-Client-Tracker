-- polyfill for https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/instanceof
return function(tbl, class)
	if typeof(tbl) ~= "table" then
		return false
	end

	if typeof(class) == "function" then
		print("Warning: received a function not a table as the class for inheritance check")
	end

	local seen = { tbl = true }

	while tbl and typeof(tbl) == "table" do
		tbl = getmetatable(tbl)
		if typeof(tbl) == "table" then
			tbl = tbl.__index

			if tbl == class then
				return true
			end
		end

		-- if we still have a valid table then check against seen
		if typeof(tbl) == "table" then
			if seen[tbl] then
				return false
			end
			seen[tbl] = true
		end
	end

	return false
end