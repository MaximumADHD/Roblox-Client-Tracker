return function(rootInstance: Instance, instName: string)
	local items = rootInstance:GetDescendants()
	table.insert(items, rootInstance)

	local found = {}
	for _, des in items do
		if des.Name == instName then
			table.insert(found, des)
		end
	end

	return found
end
