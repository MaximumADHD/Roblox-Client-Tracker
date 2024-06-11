local UGCValidationService = game:GetService("UGCValidationService")

local Root = script.Parent.Parent

local Types = require(Root.util.Types)
local getEditableMeshFromContext = require(Root.util.getEditableMeshFromContext)

local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(Root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)
local getFFlagUGCValidationFixResetPhysicsError = require(Root.flags.getFFlagUGCValidationFixResetPhysicsError)

local Analytics = require(Root.Analytics)

-- validation logic uses MeshPart.Size in several places to check asset bounds
-- however, MeshPart.Size is based on the bounding box of the physics data
-- this can be tampered with by bad actors, so we should reset it ASAP
local function resetPhysicsData(roots: { Instance }, validationContext: Types.ValidationContext)
	local startTime = tick()

	if not game:GetEngineFeature("EngineResetCollisionFidelity") then
		return false, "EngineResetCollisionFidelity is not enabled"
	end

	for _, root in roots do
		local instances = root:GetDescendants()
		table.insert(instances, 1, root)
		for _, instance in instances do
			if instance:IsA("MeshPart") then
				if getEngineFeatureUGCValidateEditableMeshAndImage() then
					local getEditableMeshSuccess, editableMesh =
						getEditableMeshFromContext(instance, "MeshId", validationContext)
					if not getEditableMeshSuccess then
						return false, "Failed to load mesh data"
					end

					if getFFlagUGCValidationFixResetPhysicsError() then
						local success = pcall(function()
							UGCValidationService:ResetCollisionFidelityWithEditableMeshDataLua(
								instance,
								editableMesh,
								instance.CollisionFidelity
							)
						end)
						if not success then
							if validationContext.isServer then
								error("Failed to load mesh data")
							end
							Analytics.reportFailure(Analytics.ErrorType.resetPhysicsData_FailedToLoadMesh)
							return false, "Failed to load mesh data"
						end
					else
						UGCValidationService:ResetCollisionFidelityWithEditableMeshDataLua(
							instance,
							editableMesh,
							instance.CollisionFidelity
						)
					end
				else
					if getFFlagUGCValidationFixResetPhysicsError() then
						local success = pcall(function()
							UGCValidationService:ResetCollisionFidelity(instance, instance.CollisionFidelity)
						end)
						if not success then
							if validationContext.isServer then
								error("Failed to load mesh data")
							end
							Analytics.reportFailure(Analytics.ErrorType.resetPhysicsData_FailedToLoadMesh)
							return false, "Failed to load mesh data"
						end
					else
						UGCValidationService:ResetCollisionFidelity(instance, instance.CollisionFidelity)
					end
				end
			end
		end
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return true
end

return resetPhysicsData
