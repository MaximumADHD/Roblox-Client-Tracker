--[[
	SplitHumanoidRigDescriptionForUpload.lua centralizes the HRD splitting we do for user convenience. 
    Why does this need to live in validation? Because fixUpPreValidation exists in Toolbox and validation,
    and seems to have over 10 different paths of getting called. One day, we will deprecate toolbox and forget ..

	The logic is: If HRD is in the avatar-level, we go through expected body parts and populate them
	Each body HRD is made to copy the relevant data, then any referenced AttachmentConstraints are replaced by the attachments.

	If they happen to put DRDs under HRD (importer seems to do that?), then we will move it.
]]

local root = script.Parent.Parent
local Constants = require(root.Constants)

local SplitHumanoidRigDescriptionForUpload = {}

function SplitHumanoidRigDescriptionForUpload.fixUploadInstance(avatarModel: Instance)
	local sourceHrd = avatarModel:FindFirstChildWhichIsA("HumanoidRigDescription")
	if not sourceHrd then
		return
	end

	for _, bodyPartName in Constants.R15_BODY_PARTS do
		local part = avatarModel:FindFirstChild(bodyPartName)
		if part then
			local copyHrd
			local foundHrd = part:FindFirstChildWhichIsA("HumanoidRigDescription")
			if foundHrd == nil then
				copyHrd = Instance.new("HumanoidRigDescription")
				copyHrd.Parent = part
			else
				copyHrd = foundHrd
			end

			if part.Name == "LowerTorso" then
				-- The LT contains the Root, which is the true origin offset (Distance to feet)
				copyHrd.OriginOffset = sourceHrd.OriginOffset
			end

			for _, jointLabel in (copyHrd :: any):GetContainedJointLabels(bodyPartName) do
				local jointInstance = sourceHrd:GetJoint(jointLabel)
				if not jointInstance then
					continue
				end

				if jointInstance:IsA("AnimationConstraint") then
					if jointInstance.Attachment0 and jointInstance.Attachment0:IsDescendantOf(part) then
						copyHrd:SetJoint(jointLabel, jointInstance.Attachment0)
					elseif jointInstance.Attachment1 and jointInstance.Attachment1:IsDescendantOf(part) then
						copyHrd:SetJoint(jointLabel, jointInstance.Attachment1)
					else
						continue
					end
				else
					copyHrd:SetJoint(jointLabel, jointInstance)
				end

				copyHrd:SetTposeAdjustment(jointLabel, sourceHrd:GetTposeAdjustment(jointLabel))
				copyHrd:SetJointSize(jointLabel, sourceHrd:GetJointSize(jointLabel))
				copyHrd:SetJointRangeMin(jointLabel, sourceHrd:GetJointRangeMin(jointLabel))
				copyHrd:SetJointRangeMax(jointLabel, sourceHrd:GetJointRangeMax(jointLabel))
			end
		end
	end

	local leftHand = avatarModel:FindFirstChild("LeftHand")
	local rightHand = avatarModel:FindFirstChild("RightHand")
	for _, drd in sourceHrd:GetChildren() do
		if drd:IsA("DigitsRigDescription") then
			if drd.Side == Enum.DigitsRigDescriptionSide.Left and leftHand then
				drd:Clone().Parent = leftHand
			elseif drd.Side == Enum.DigitsRigDescriptionSide.Right and rightHand then
				drd:Clone().Parent = rightHand
			end
		end
	end
end

return SplitHumanoidRigDescriptionForUpload
