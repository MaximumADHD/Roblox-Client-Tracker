local Players = game:GetService("Players")

local FFlagHumanoidParentNil = game:DefineFastFlag("HumanoidParentNil", false)

local attachmentToPart = {}
local character, humanoid
if not FFlagHumanoidParentNil then
	-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
	-- Will be removed when that PR is merged.
	if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
		character = (Players :: any):CreateHumanoidModelFromDescriptionAsync(
			Instance.new("HumanoidDescription"),
			Enum.HumanoidRigType.R15
		)
	else
		character = (Players :: any):CreateHumanoidModelFromDescription(
			Instance.new("HumanoidDescription"),
			Enum.HumanoidRigType.R15
		)
	end

	humanoid = character:FindFirstChildOfClass("Humanoid")
	assert(humanoid, "Humanoid must exist in character model")

	local bodyTypeScale = humanoid:FindFirstChild("BodyTypeScale") :: NumberValue
	local bodyProportionScale = humanoid:FindFirstChild("BodyProportionScale") :: NumberValue

	bodyTypeScale.Value = 0
	bodyProportionScale.Value = 0

	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			for _, attachment in part:GetChildren() do
				if not attachment:IsA("Attachment") then
					continue
				end
				attachmentToPart[attachment.Name] = humanoid:GetBodyPartR15(part)
			end
		end
	end
end

return function(handle: BasePart, attachment: Attachment)
	if FFlagHumanoidParentNil then
		if character == nil then
			-- SBT-5736: `any` cast present due to in-flight PR to rename methods.
			-- Will be removed when that PR is merged.
			if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
				character = (Players :: any):CreateHumanoidModelFromDescriptionAsync(
					Instance.new("HumanoidDescription"),
					Enum.HumanoidRigType.R15
				)
			else
				character = (Players :: any):CreateHumanoidModelFromDescription(
					Instance.new("HumanoidDescription"),
					Enum.HumanoidRigType.R15
				)
			end

			humanoid = character:FindFirstChildOfClass("Humanoid")
			assert(humanoid, "Humanoid must exist in character model")

			local bodyTypeScale = humanoid:FindFirstChild("BodyTypeScale") :: NumberValue
			local bodyProportionScale = humanoid:FindFirstChild("BodyProportionScale") :: NumberValue

			bodyTypeScale.Value = 0
			bodyProportionScale.Value = 0

			for _, part in pairs(character:GetDescendants()) do
				if part:IsA("BasePart") then
					for _, att in part:GetChildren() do
						if not att:IsA("Attachment") then
							continue
						end
						attachmentToPart[att.Name] = humanoid:GetBodyPartR15(part)
					end
				end
			end
		end
	end
	if humanoid == nil then
		return Vector3.new(1, 1, 1)
	end
	return humanoid:GetAccessoryHandleScale(handle, attachmentToPart[attachment.Name])
end
