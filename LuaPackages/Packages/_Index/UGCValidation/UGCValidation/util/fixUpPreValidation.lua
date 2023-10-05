--!nocheck
--using !nocheck instead of --!strict as this file uses deprecated BasePart.Velocity

--[[
	remove instances and fix up property values before validating
]]

local function fixUpPreValidation(root: Instance): Instance
	root = root:Clone()

	local objects = root:GetDescendants()
	table.insert(objects, root)

	for _, thing in objects do
		if thing.Parent ~= nil then -- don't want to destroy the root
			if
				thing:IsA("Motor6D")
				or thing.Name == "OriginalSize"
				or thing.Name == "OriginalPosition"
				or (thing:IsA("Weld") and thing.Name == "AccessoryWeld")
			then
				thing:Destroy()
				continue
			end
		end

		if thing:IsA("BasePart") then
			thing.Velocity = Vector3.zero
			thing.RotVelocity = Vector3.zero
		end

		local isParentAnAccessory = if thing.Parent then thing.Parent:IsA("Accessory") else false
		if
			thing:IsA("MeshPart")
			and not isParentAnAccessory
			and thing.TextureID == ""
			and (not thing:FindFirstChildWhichIsA("SurfaceAppearance"))
		then
			local surfaceAppearance = Instance.new("SurfaceAppearance")
			surfaceAppearance.Parent = thing
		end
	end

	return root
end

return fixUpPreValidation
