local Plugin = script.Parent.Parent.Parent
local IsGroupOwner = require(Plugin.Src.Selectors.IsGroupOwner)

return function(state)
	local groupMetadata = state.GroupMetadata.NewGroupMetadata or state.GroupMetadata.CurrentGroupMetadata
	local currentGroupMetadata = state.GroupMetadata.CurrentGroupMetadata
	
	local groups = {}
	for groupId, metadata in pairs(groupMetadata) do
		local groupName = metadata.Name

		if not IsGroupOwner(state, groupId) then
			table.insert(groups, {Name = groupName, Id = groupId})
		end
	end

	table.sort(groups, function(a,b)
		return a.Name < b.Name
	end)

	local newGroupIds = {}
	local currentGroupIds = {}
	
	-- Show new additions first
	for _, group in ipairs(groups) do
		if not currentGroupMetadata[group.Id] then
			table.insert(newGroupIds, group.Id)
		end
	end
	
	-- Then show existing groups
	for _, group in ipairs(groups) do
		if currentGroupMetadata[group.Id] then
			table.insert(currentGroupIds, group.Id)
		end
	end

	return newGroupIds, currentGroupIds
end
