local Page = script.Parent.Parent

local IsGroupOwner = require(Page.Selectors.IsGroupOwner)

return function(state)
	local groupMetadata = state.Settings.Changed.groupMetadata or state.Settings.Current.groupMetadata

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

	local returnedGroupIds = {}
	for _, group in ipairs(groups) do
		table.insert(returnedGroupIds, group.Id)
	end

	return returnedGroupIds
end