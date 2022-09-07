local UGCValidationService = game:GetService("UGCValidationService")

local function fixMeshPartAccessory(accessory)
	if accessory then
		local handle = accessory:FindFirstChild("Handle")
		if handle and handle:IsA("MeshPart") then
			UGCValidationService:ResetCollisionFidelity(handle)
		end
	end
end

return fixMeshPartAccessory
