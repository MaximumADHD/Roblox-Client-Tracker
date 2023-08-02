--!strict
type Table = { [any]: any }

local function shallowEqual(a: Table, b: Table): boolean
	for key, value in a do
		if b[key] ~= value then
			return false
		end
	end

	for key, value in b do
		if a[key] ~= value then
			return false
		end
	end

	return true
end

return shallowEqual
