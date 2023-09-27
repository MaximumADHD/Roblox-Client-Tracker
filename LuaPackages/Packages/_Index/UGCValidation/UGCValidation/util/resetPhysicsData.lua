local UGCValidationService = game:GetService("UGCValidationService")

-- validation logic uses MeshPart.Size in several places to check asset bounds
-- however, MeshPart.Size is based on the bounding box of the physics data
-- this can be tampered with by bad actors, so we should reset it ASAP
local function resetPhysicsData(roots: { Instance })
	if not game:GetEngineFeature("EngineResetCollisionFidelity") then
		return
	end

	for _, root in roots do
		local instances = root:GetDescendants()
		table.insert(instances, 1, root)
		for _, instance in instances do
			if instance:IsA("MeshPart") then
				UGCValidationService:ResetCollisionFidelity(instance, instance.CollisionFidelity)
			end
		end
	end
end

return resetPhysicsData
