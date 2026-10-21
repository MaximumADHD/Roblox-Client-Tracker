--!nocheck
--using !nocheck instead of --!strict as this file uses deprecated BasePart.Velocity

--[[
	remove instances and fix up property values before validating.
	Why are we changing the input to validation? Because this is actually only used by plugins as a shortcut.
	We should have a centralized flow outside of validation to do this cleanup. Future work. 
]]

local srcRoot = script.Parent.Parent
local getEngineFeatureEngineSplitHumanoidRigDescriptionInUpload =
	require(srcRoot.flags.getEngineFeatureEngineSplitHumanoidRigDescriptionInUpload)
local getFFlagUGCValidationStripAccessoryHandleAttributes =
	require(srcRoot.flags.getFFlagUGCValidationStripAccessoryHandleAttributes)
local SplitHumanoidRigDescriptionForUpload = require(srcRoot.util.SplitHumanoidRigDescriptionForUpload)

local function fixUpPreValidation(root: Instance): Instance
	root = root:Clone()

	if getEngineFeatureEngineSplitHumanoidRigDescriptionInUpload() then
		SplitHumanoidRigDescriptionForUpload.fixUploadInstance(root)
	end

	local objects = root:GetDescendants()
	table.insert(objects, root)

	for _, thing in objects do
		if thing.Parent ~= nil then -- don't want to destroy the root
			if
				thing:IsA("Motor6D")
				or thing.Name == "OriginalSize"
				or thing.Name == "OriginalPosition"
				or (thing:IsA("Weld") and thing.Name == "AccessoryWeld")
				or (
					getEngineFeatureEngineSplitHumanoidRigDescriptionInUpload()
					and (thing:IsA("Constraint") or thing:isA("NoCollisionConstraint"))
				)
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

		-- Avatar Auto Setup tags accessory Handles with hidden RBX attributes (e.g. RBX_AutoSetupped) that creators
		-- can't clear. Toolbox strips Handle attributes from the copy it uploads, so strip them here to match.
		if
			getFFlagUGCValidationStripAccessoryHandleAttributes()
			and (thing:IsA("MeshPart") or thing:IsA("Part"))
			and thing.Name == "Handle"
			and isParentAnAccessory
		then
			for attribute in thing:GetAttributes() do
				thing:SetAttribute(attribute, nil)
			end
		end
	end

	return root
end

return fixUpPreValidation
