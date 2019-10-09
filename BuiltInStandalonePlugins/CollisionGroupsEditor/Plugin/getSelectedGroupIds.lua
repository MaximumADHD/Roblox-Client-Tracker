local PhysicsService = game:GetService("PhysicsService")

local getSelectedParts = require(script.Parent.getSelectedParts)

return function(allGroups)
	local parts = getSelectedParts()

	local selectedGroupsMap = {}

	for _, part in pairs(parts) do
		for _, group in pairs(allGroups) do
			if PhysicsService:CollisionGroupContainsPart(group.Name, part) then
				selectedGroupsMap[group] = true

				-- we can break here because a part can belong only to one collision group
				break
			end
		end
	end

	local selectedGroupIds = {}

	for group, _ in pairs(selectedGroupsMap) do
		table.insert(selectedGroupIds, group.Id)
	end

	return selectedGroupIds
end