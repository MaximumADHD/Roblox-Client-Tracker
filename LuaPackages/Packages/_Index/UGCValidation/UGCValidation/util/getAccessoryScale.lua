local Players = game:GetService("Players")

local character =
	Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)

character.Humanoid.BodyTypeScale.Value = 0
character.Humanoid.BodyProportionScale.Value = 0

local attachmentToPart = {}

for _, part in pairs(character:GetDescendants()) do
	if part:IsA("BasePart") then
		for _, attachment in part:GetChildren() do
			if not attachment:IsA("Attachment") then
				continue
			end
			attachmentToPart[attachment.Name] = character.Humanoid:GetBodyPartR15(part)
		end
	end
end

return function(handle: BasePart, attachment: Attachment)
	return character.Humanoid:GetAccessoryHandleScale(handle, attachmentToPart[attachment.Name])
end
