local PhysicsService = game:GetService("PhysicsService")

return function(groupName)
	local parts = {}

	for _, object in pairs(workspace:GetDescendants()) do
		if game:GetFastFlag("CollisionGroupNameStage3") then
			if object:IsA("BasePart") and  object.CollisionGroup == groupName then
				table.insert(parts, object)
			end
		else
			if object:IsA("BasePart") and PhysicsService:CollisionGroupContainsPart(groupName, object) then
				table.insert(parts, object)
			end
		end
	end

	return parts
end