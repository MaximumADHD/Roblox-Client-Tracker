--!strict
--[=[
	Returns a Dictionary which excludes the given `keys`.
]=]

local function omit<K, V>(dictionary: { [K]: V }, ...: K): { [K]: V }
	local new = table.clone(dictionary)
	for _, key in { ... } do
		new[key] = nil
	end
	return new
end

return omit
