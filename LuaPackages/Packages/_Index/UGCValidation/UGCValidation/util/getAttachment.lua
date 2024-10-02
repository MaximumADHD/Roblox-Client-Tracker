--!strict

local root = script.Parent.Parent

local getEngineFeatureEngineUGCValidateRigidMeshPartAccessories =
	require(root.flags.getEngineFeatureEngineUGCValidateRigidMeshPartAccessories)

local function getAttachment(parent: Instance, names: { string }): Attachment?
	for _, name in pairs(names) do
		local result = parent:FindFirstChild(name)
		if result then
			if getEngineFeatureEngineUGCValidateRigidMeshPartAccessories() and result:IsA("Attachment") then
				return result
			else
				return result :: Attachment
			end
		end
	end
	return nil
end

return getAttachment
