--!strict

local function isMeshPartAccessory(instance: Instance): boolean
	if instance:IsA("Accessory") then
		local handle = instance:FindFirstChild("Handle")
		if handle and handle:IsA("MeshPart") then
			return true
		end
	end
	return false
end

return isMeshPartAccessory
