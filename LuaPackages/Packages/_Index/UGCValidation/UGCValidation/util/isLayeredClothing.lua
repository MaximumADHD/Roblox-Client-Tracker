local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateRigidMeshPartAccessories =
	require(root.flags.getEngineFeatureEngineUGCValidateRigidMeshPartAccessories)

local function isLayeredClothing(instance: any): boolean
	if getEngineFeatureEngineUGCValidateRigidMeshPartAccessories() then
		return instance:FindFirstChildWhichIsA("WrapLayer", true)
	else
		if instance and typeof(instance) == "Instance" and instance:IsA("Accessory") then
			local handle = instance:FindFirstChild("Handle")
			if handle and handle:IsA("MeshPart") then
				local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
				if wrapLayer then
					return true
				end
			end
		end
		return false
	end
end

return isLayeredClothing
