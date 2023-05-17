local function getAncestors(instance: Instance)
	local ancestorList = { instance }
	local current = instance
	while current.Parent do
		table.insert(ancestorList, current.Parent :: Instance)
		current = current.Parent
	end
	return ancestorList
end

return getAncestors
