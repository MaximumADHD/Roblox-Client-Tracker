--[[

	This file contains util functions related to attaching accessories to avatars, or
	deforming clothing.

]]

local FFlagHumanoidGetAccessoryScale = game:GetFastFlag("HumanoidGetAccessoryScale")

local Util = script.Parent
local AssetTypeAttachmentInfo = require(Util.AssetTypeAttachmentInfo)
local AvatarUtil = require(Util.AvatarUtil)

local AccessoryUtil = {}

local Workspace = game.Workspace

function AccessoryUtil:getHandle(instance)
	if instance:IsA("MeshPart") then
		return instance
	elseif instance:IsA("Accessory") then
		return instance:FindFirstChild("Handle")
	elseif instance:IsA("Model") then
		return instance:FindFirstChildWhichIsA("MeshPart")
	end
end

function AccessoryUtil:findAvatarAttachmentByName(model, name)
	if name == "" or name == nil then
		return nil
	end

	local children = model:GetChildren()
	for _, child in ipairs(children) do
		-- for all parts
		if child:IsA("BasePart") then
			-- if LC then continue
			if child:FindFirstChildWhichIsA("WrapLayer") then
				continue
			end
				
			-- try to find attachment using name
			local att0 = child:FindFirstChild(name)
			if att0 and att0:IsA("Attachment") then
				return att0
			end
			
			-- try to find attachment using name + attachment
			local att1 = child:FindFirstChild(name .. "Attachment")
			if att1 and att1:IsA("Attachment") then
				return att1
			end
			
		end
	end
	return nil
end

function AccessoryUtil:addWeld(cframe, p0, p1, parent)
	if cframe then
		parent.CFrame = cframe
	end

	local weld = Instance.new("WeldConstraint")
	weld.Part0 = p0
	weld.Part1 = p1
	weld.Parent = parent
end

function AccessoryUtil:clearWelds(item)
	for _, instance in pairs(item:GetDescendants()) do
		if
			instance:IsA("WeldConstraint") or
			instance:IsA("Weld") or
			instance:IsA("Motor6D")
		then
			instance:Destroy()
		end
	end
end

function AccessoryUtil:getAutomaticAccessoryScaling(avatar, item, attachmentName)
	if not FFlagHumanoidGetAccessoryScale then
		return Vector3.new(1,1,1)
	end

	local humanoid = avatar:FindFirstChildWhichIsA("Humanoid")
	if not humanoid then
		return Vector3.new(1,1,1)
	end

	local matchingAttachment = self:findAvatarAttachmentByName(avatar, attachmentName)
	if not matchingAttachment then
		return Vector3.new(1,1,1)
	end

	local r15PartType = humanoid:GetBodyPartR15(matchingAttachment.Parent)
	if r15PartType == Enum.BodyPartR15.Unknown then
		return Vector3.new(1,1,1)
	end

	return humanoid:GetAccessoryHandleScale(item, r15PartType)
end

local function isAccessoryOrClothingAttachment(att)
	for category, types in pairs(AssetTypeAttachmentInfo) do
		for assetType, info in pairs(types) do
			for attTypeName, attInfo in pairs(info.Attachments) do
				if attInfo.Name == att.Name then
					return true
				end
			end 
		end
	end

	return false
end

function AccessoryUtil:clearAccessoryAssetAttachmentsWithFilter(item, filter)
	local filtered = item:GetChildren()

	if filter then
		filtered = filter(filtered)
	end

	for _, child in ipairs(filtered) do
		if child:IsA("Attachment") and isAccessoryOrClothingAttachment(child) then
			child:Destroy()
		end
	end
end

function AccessoryUtil:getExistingAttachmentInstance(item, attachmentName)
	local attachmentInst = nil
	for _, child in ipairs(item:GetChildren()) do
		if attachmentName == child.Name then
			attachmentInst = child
			break
		end
	end

	return attachmentInst
end

function AccessoryUtil:createOrReuseAttachmentInstance(item, body, attachmentName, attachmentCFrameLocal, itemCFrameLocal)
	if not attachmentName then
		return
	end

	local bodyAttachmentInst = self:findAvatarAttachmentByName(body, attachmentName)
	if not bodyAttachmentInst then
		return
	end

	local attachmentInst = self:getExistingAttachmentInstance(item, attachmentName)

	self:clearAccessoryAssetAttachmentsWithFilter(item, function(instances)
		local filtered = {}
		for _, instance in ipairs(instances) do
			if instance.Name ~= attachmentName then
				table.insert(filtered, instance)
			end
		end
		return filtered
	end)

	if not attachmentInst then
		attachmentInst = Instance.new("Attachment", item)
		attachmentInst.Name = attachmentName
	end

	if attachmentCFrameLocal and itemCFrameLocal then
		attachmentInst.CFrame = attachmentCFrameLocal
		item.CFrame = bodyAttachmentInst.WorldCFrame * itemCFrameLocal
	else
		attachmentInst.CFrame = bodyAttachmentInst.Parent.CFrame
	end
end

function AccessoryUtil:attachNonLayeredItem(avatar, item, attachmentName, applyAutoScale)
	local root = AvatarUtil:getRootPart(avatar)
	if not root then
		return
	end

	attachmentName = if attachmentName == nil then "" else attachmentName
	item.Parent = avatar

	self:clearWelds(item)

	if applyAutoScale then
		item.Size = item.Size * self:getAutomaticScaling(avatar, item, attachmentName)
	end

	local attItem = item:FindFirstChild(attachmentName)
	if not attItem then
		self:addWeld(root.CFrame, item, root, item)
		return
	end

	local attBody = self:findAvatarAttachmentByName(avatar, attItem.Name)
	if not attBody then
		self:addWeld(root.CFrame, item, root, item)
		return
	end

	self:addWeld(nil, item, attBody.Parent, item)
end

function AccessoryUtil:attachClothingItem(avatar, item, attachmentName, applyAutoScale)
	local characterRoot = AvatarUtil:getRootPart(avatar)
	if not characterRoot then
		return
	end

	if item:IsA("Accessory") then
		item.Parent = avatar
		return
	end

	local bodyWrapTarget = nil
	for _, instance in pairs(avatar:GetDescendants()) do
		if instance:IsA("WrapTarget") then
			bodyWrapTarget = instance
			break
		end
	end

	-- copy cleanup clothes and copy into ReplicatedFirst (bug workaround)
	--item.Parent = game.ReplicatedFirst

	local clothesMeshes = {}
	for _, child in pairs(item:GetChildren()) do
		if child:IsA("WrapLayer") then
			--item.Parent = game.ReplicatedFirst
			table.insert(clothesMeshes, {mesh = item, wrap = child})
		end
	end

	-- Accessory is not an LC item
	if #clothesMeshes <= 0 then
		self:attachNonLayeredItem(avatar, item, attachmentName, applyAutoScale)
		return
	end

	if not bodyWrapTarget then
		return
	end

	for _, cm in ipairs(clothesMeshes) do
		self:clearWelds(cm.mesh)
	end

	-- align using wrap origin and re-parent/weld
	local anchorWrap = bodyWrapTarget
	local worldaFromWrap = anchorWrap.ImportOriginWorld

	for _, cm in ipairs(clothesMeshes) do
		local wrapToAlign = cm.wrap
		local wrapFromWorldb = wrapToAlign.ImportOriginWorld:Inverse()
		local worldaFromWorldb = worldaFromWrap * wrapFromWorldb
		local worldb = wrapToAlign.Parent.CFrame
		-- note: adjust CFrame of the parent part
		wrapToAlign.Parent.CFrame = (worldaFromWorldb * worldb)

		cm.mesh.Parent = avatar

		-- find attachment point (if available), otherwise attach to HumanoidRootPart
		local part0 = cm.mesh
		local part1 = characterRoot

		local att = self:findAvatarAttachmentByName(avatar, attachmentName)
		if att then
			part1 = att.Parent
		end

		self:addWeld(nil, part0, part1, cm.mesh)
	end
	item.Parent = avatar
end

return AccessoryUtil