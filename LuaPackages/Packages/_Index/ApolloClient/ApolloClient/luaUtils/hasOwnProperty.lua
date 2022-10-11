local function hasOwnProperty(obj: { [any]: any }, prop: string | number): boolean
	return obj[prop] ~= nil
end

return hasOwnProperty
