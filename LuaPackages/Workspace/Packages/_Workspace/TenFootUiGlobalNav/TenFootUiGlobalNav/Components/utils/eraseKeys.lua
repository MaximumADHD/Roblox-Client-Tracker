function eraseKeys(keys: { string }, obj: { [string]: any }): { [string]: any }
	local copy = table.clone(obj)
	for _, key in pairs(keys) do
		copy[key] = nil
	end
	return copy
end

return eraseKeys
