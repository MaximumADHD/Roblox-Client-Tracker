local PhysicsService = game:GetService("PhysicsService")

return function(groupName)
	local parts = {}

	for _, object in pairs(workspace:GetDescendants()) do
		if object:IsA("BasePart") and PhysicsService:CollisionGroupContainsPart(groupName, object) then
			table.insert(parts, object)
		end
	end

	return parts
end