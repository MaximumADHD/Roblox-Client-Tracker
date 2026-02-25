--!strict
--[=[
	Returns a Dictionary of only entries for which the `predicate` function returns true.
]=]

local function filter<K, V>(dictionary: { [K]: V }, predicate: ((V, K) -> boolean)): { [K]: V }
	local new = {}

	for k, v in dictionary do
		if predicate(v, k) then
			new[k] = v
		end
	end

	return new
end

return filter
