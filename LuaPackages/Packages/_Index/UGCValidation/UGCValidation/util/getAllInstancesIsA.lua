return function(rootInstance: Instance, className: string)
	local classExists, _ = pcall(Instance.new, className)
	assert(classExists, `{className} does not exist. Did you make a typo?`)

	local items = rootInstance:GetDescendants()
	table.insert(items, rootInstance)

	local found = {}
	for _, des in items do
		if des:IsA(className) then
			table.insert(found, des)
		end
	end

	return found
end
