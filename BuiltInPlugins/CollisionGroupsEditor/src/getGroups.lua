local PhysicsService = game:GetService("PhysicsService")

function getCollisions(group, groups)
	local collisions = {}

	for _, otherGroup in pairs(groups) do
		table.insert(collisions, {
			Name = otherGroup.name,
			Collides = PhysicsService:CollisionGroupsAreCollidable(group.name, otherGroup.name),
		})
	end

	return collisions
end

function findDefault(groups)
	for _, group in pairs(groups) do
		if group.Name == "Default" then
			return group
		end
	end
end

function sortGroups(groups)
	local default = findDefault(groups)

	local others = {}
	for _, group in pairs(groups) do
		if group ~= default then
			table.insert(others, group)
		end
	end
	table.sort(others, function(a, b)
		return a.Name < b.Name
	end)

	local final = {default}
	for index = 1, #others do
		table.insert(final, others[index])
	end

	return final
end

function getGroups()
	local groups = {}
	local collisionGroups = PhysicsService:GetCollisionGroups()

	for _, group in pairs(collisionGroups) do
		table.insert(groups, {
			Name = group.name,
			Id = group.id,
			Collisions = getCollisions(group, collisionGroups)
		})
	end

	groups = sortGroups(groups)

	return groups
end

return getGroups