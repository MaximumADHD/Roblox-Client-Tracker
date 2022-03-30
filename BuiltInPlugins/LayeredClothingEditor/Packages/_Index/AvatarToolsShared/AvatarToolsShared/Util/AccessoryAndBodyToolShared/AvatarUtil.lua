--[[

	This file contains util functions related to attaching editing or getting info
	from avatars.

]]


local AvatarUtil = {}

local function getExents(item)
	if item:IsA("MeshPart") then
		return item.Size
	elseif item:IsA("Model") then
		return item:GetExtentsSize()
	end
end

function AvatarUtil:getRootPart(model)
	if model.PrimaryPart then
		return model.PrimaryPart
	else
		return model:FindFirstChild("HumanoidRootPart")
	end
end

function AvatarUtil:positionAvatarNextTo(avatar, nextToInstance, avoidCollisions)
	if nextToInstance and avatar then
		local extentsEditingItem = getExents(nextToInstance)
		local extentsAvatar = avatar:GetExtentsSize()

		local rootCFrame
		if nextToInstance:IsA("MeshPart") then
			rootCFrame = nextToInstance.CFrame
		else
			rootCFrame = self:getRootPart(nextToInstance).CFrame
		end

		local startPos = rootCFrame.Position
		local rotationOnly = rootCFrame - rootCFrame.Position
		startPos = startPos - Vector3.new(extentsEditingItem.X, 0, 0) - Vector3.new(extentsAvatar.X, 0, 0)
		startPos = rotationOnly * startPos
		if avoidCollisions then
			spawn(function()
				avatar:MoveTo(startPos)
			end)
		else
			avatar:SetPrimaryPartCFrame(CFrame.new(startPos))
		end
	end
end

return AvatarUtil