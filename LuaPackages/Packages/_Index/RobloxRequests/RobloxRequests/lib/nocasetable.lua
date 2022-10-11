-- CaseInsensitiveTable: access table indices without knowing their case
-- e.g.: headers["content-type"] == headers["Content-Type"]

return function (t)
	local nt = setmetatable({}, {
		__index = function(self, idx)
			return rawget(self, idx:lower())
		end,
		__newindex = function(self, idx, val)
			rawset(self, idx:lower(), val)
		end
	})
	
	-- use custom newindex func to write all values to new table
	for k, v in pairs(t) do
		nt[k] = v
	end

	return nt
end