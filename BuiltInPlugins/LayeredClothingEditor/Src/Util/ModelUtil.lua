local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local TestHelper = require(Plugin.Src.Util.TestHelper)

local Workspace = game.Workspace
local HttpService = game:GetService("HttpService")

local FFlagHumanoidGetAccessoryScale = game:GetFastFlag("HumanoidGetAccessoryScale")

local ModelUtil = {}

local function getDescendants(descendants, model)
	if not (model:IsA("Model") and model.Name == "AnimSaves") then
		for _, ch in ipairs(model:GetChildren()) do
			table.insert(descendants, ch)
			getDescendants(descendants, ch)
		end
	end
	return descendants
end

local function getExents(item)
	if item:IsA("MeshPart") then
		return item.Size
	elseif item:IsA("Model") then
		return item:GetExtentsSize()
	end
end

function isAccessoryOrClothingAttachment(att)
	local assetTypes = Constants.ASSET_TYPE_ATTACHMENT
	for category, types in pairs(assetTypes) do
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

function ModelUtil:clearAccessoryAssetAttachmentsWithFilter(item, filter)
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

function ModelUtil:makeDeformerNamesUnique(item)
	if not item then
		return
	end
	
	local descendants = getDescendants({}, item)
	for _, desc in ipairs(descendants) do
		if desc:IsA("BaseWrap") then
			desc.Name = HttpService:GenerateGUID()
		end
	end
end

function ModelUtil:cleanupDeformerNames(editingItem, sourceItem)
	if not editingItem or not sourceItem then
		return
	end

	editingItem.Name = sourceItem.Name

	local descendants = getDescendants({}, editingItem)
	for _, desc in ipairs(descendants) do
		if desc:IsA("BaseWrap") then
			local newName = desc.Parent.Name
			if newName == "Part" or newName =="MeshPart" then
				newName = desc.ClassName
			end
			desc.Name = newName
		end
	end
end

function ModelUtil:getExistingAttachmentInstance(item, attachmentName)
	local attachmentInst = nil
	for _, child in ipairs(item:GetChildren()) do
		if attachmentName == child.Name then
			attachmentInst = child
			break
		end
	end

	return attachmentInst
end

function ModelUtil:getExistingAttachmentPoint(item, body, attachmentName)
	local bodyAttachmentInst = self:findAvatarAttachmentByName(body, attachmentName)
	if not bodyAttachmentInst then
		return
	end

	local existingAttachmentInst = self:getExistingAttachmentInstance(item, attachmentName)
	if not existingAttachmentInst then
		return
	end

	return {
		ItemCFrame = existingAttachmentInst.CFrame:inverse(),
		AttachmentCFrame = existingAttachmentInst.CFrame,
	}
end

function ModelUtil:createOrReuseAttachmentInstance(item, body, attachmentInfo, attachmentPoint)
	if not attachmentInfo then
		return
	end

	local bodyAttachmentInst = self:findAvatarAttachmentByName(body, attachmentInfo.Name)
	if not bodyAttachmentInst then
		return
	end

	local attachmentInst = self:getExistingAttachmentInstance(item, attachmentInfo.Name)

	self:clearAccessoryAssetAttachmentsWithFilter(item, function(instances)
		local filtered = {}
		for _, instance in ipairs(instances) do
			if instance.Name ~= attachmentInfo.Name then
				table.insert(filtered, instance)
			end
		end
		return filtered
	end)

	if not attachmentInst then
		attachmentInst = Instance.new("Attachment", item)
		attachmentInst.Name = attachmentInfo.Name
	end

	if attachmentPoint then
		attachmentInst.CFrame = attachmentPoint.AttachmentCFrame
		item.CFrame = bodyAttachmentInst.WorldCFrame * attachmentPoint.ItemCFrame
	else
		attachmentInst.CFrame = bodyAttachmentInst.CFrame
	end
end

-- checks if the box described by point1, bounds1 contains the entire box
-- described by point2, bounds2
function ModelUtil:checkAccessoryBounds(containerCenter, containerSize, accessoryCFrame, accessorySize)
	local accessoryCenter = accessoryCFrame.p
	local accessoryCFrameRotOnly = accessoryCFrame - accessoryCenter

	local accessoryCorners = {}
	for _, corner in pairs(Constants.CUBE_CORNERS) do
		local rotatedCorner = accessoryCenter + (accessorySize * (accessoryCFrameRotOnly * corner))
		table.insert(accessoryCorners, rotatedCorner)
	end

	local containerMin = containerCenter + (containerSize * Constants.CUBE_CORNERS.LeftBottomFront)
	local containerMax = containerCenter + (containerSize * Constants.CUBE_CORNERS.RightTopBack)

	for _, corner in ipairs(accessoryCorners) do
		if (corner.x < containerMin.X or corner.x > containerMax.X) or
			(corner.y < containerMin.Y or corner.y > containerMax.Y) or
			(corner.z < containerMin.Z or corner.z > containerMax.Z) then
			return false
		end
	end

	return true
end

function ModelUtil:focusCameraOnItem(item)
	local camera = game.workspace:FindFirstChildOfClass("Camera")
	if camera then
		local extents = getExents(item)
		local width = math.max(extents.X, extents.Z)
		local rootPart = self:getRootPart(item)
		if extents and rootPart then
			local rootFrame = rootPart.CFrame
			local center = rootFrame.Position + rootFrame.LookVector * (width * 2)
			camera.CFrame = CFrame.new(center, rootFrame.Position)
			camera.Focus = rootFrame
		end
	end
end

function ModelUtil:findAvatarAttachmentByName(model, name)
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

function ModelUtil:positionAvatar(avatar, editingItem, avoidCollisions)
	if editingItem and avatar then
		local extentsEditingItem = getExents(editingItem)
		local extentsAvatar = avatar:GetExtentsSize()
		local rootCFrame = self:getRootPart(editingItem).CFrame
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

function ModelUtil:addWeld(cframe, p0, p1, parent)
	if cframe then
		parent.CFrame = cframe
	end

	local weld = Instance.new("WeldConstraint")
	weld.Part0 = p0
	weld.Part1 = p1
	weld.Parent = parent
	return
end

function ModelUtil:clearWelds(item)
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

function ModelUtil:getAutomaticScaling(avatar, item, attachmentName)
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

function ModelUtil:attachNonClothingItem(root, avatar, item, attachmentName, weldWithCurrentPos, applyAutoScale)
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

	self:addWeld(not weldWithCurrentPos and attBody.Parent.CFrame or nil, item, attBody.Parent, item)
	return
end

function ModelUtil:attachClothingItem(avatar, item, attachmentName, weldWithCurrentPos, applyAutoScale)
	local characterRoot = avatar:FindFirstChild("HumanoidRootPart")
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
	item.Parent = game.ReplicatedFirst

	local clothesMeshes = {}
	for _, child in pairs(item:GetChildren()) do
		if child:IsA("WrapLayer") then
			item.Parent = game.ReplicatedFirst
			table.insert(clothesMeshes, {mesh = item, wrap = child})
		end
	end

	-- Accessory is not an LC item
	if #clothesMeshes <= 0 then
		self:attachNonClothingItem(characterRoot, avatar, item, attachmentName, weldWithCurrentPos, applyAutoScale)
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

		local att = ModelUtil:findAvatarAttachmentByName(avatar, attachmentName)
		if att then
			part1 = att.Parent
		end

		self:addWeld(nil, part0, part1, cm.mesh)
	end
	item.Parent = avatar
end

local function updateWrapsHelper(deformers, pointData, cageMode)
	if DebugFlags.UseMockCages() then
		return
	end

	for _, deformer in pairs(deformers) do
		local verts = pointData[cageMode][deformer.Name]
		if not verts or not deformer:FindFirstAncestor(Workspace.Name) then
			continue
		end
		local newVerts = {}
		for _, vert in ipairs(verts) do
			table.insert(newVerts, vert.Position)
		end
		deformer:ModifyVertices(cageMode, newVerts)
	end	
end

function ModelUtil:updateWraps(pointData, cageMode)
	updateWrapsHelper(self.deformerToPartMap, pointData, cageMode)
end

function ModelUtil:deformAvatar(model, pointData, cageMode)
	local deformerToPartMap = self:getDeformerToPartMap(model, true)
	updateWrapsHelper(deformerToPartMap, pointData, cageMode)
end

function ModelUtil:deformClothing(item, pointData, cageMode)
	local wrapLayer = {item:FindFirstChildWhichIsA("WrapLayer")}
	updateWrapsHelper(wrapLayer, pointData, cageMode)
end

function ModelUtil:getDeformerToPartMap(model, isBody)
	if model then
		local deformerToPartMap = {}
		local descendants = getDescendants({}, model)
		for _, desc in ipairs(descendants) do
			if isBody and desc:IsA("WrapTarget") then
				deformerToPartMap[desc.Parent] = desc
			elseif not isBody and desc:IsA("WrapLayer") then
				deformerToPartMap[desc.Parent] = desc
			end
		end	
		return deformerToPartMap	
	end
	return self.deformerToPartMap
end

function ModelUtil:getPartCFrame(name, cage)
	if DebugFlags.UseMockCages() then
		return self.deformerToPartMap[name].CFrame
	end

	for part, deformer in pairs(self.deformerToPartMap) do
		if deformer.Name == name then
			if cage == Enum.CageType.Inner and deformer:IsA("WrapLayer") then
				return deformer.ReferenceOrigin * part.CFrame
			else
				return deformer.CageOrigin * part.CFrame
			end
		end
	end

	return CFrame.new()
end

function ModelUtil:getPartFromDeformer(name)
	for part, deformer in pairs(self.deformerToPartMap) do
		if deformer.Name == name then
			if DebugFlags.UseMockCages() then
				return deformer
			else
				return part
			end
		end
	end
end

function ModelUtil:getRootCFrame(model)
	local rootPart = self:getRootPart(model)
	if rootPart then
		return rootPart.CFrame
	end

	return CFrame.new()
end

function ModelUtil:getRootPart(model)
	if ItemCharacteristics.isAvatar(model) then
		if model.PrimaryPart then
			return model.PrimaryPart
		else
			return model:FindFirstChild("HumanoidRootPart")
		end
	elseif ItemCharacteristics.isClothes(model) then
		return model
	end
end

function ModelUtil:createModelInfo(model, isBody)
	if DebugFlags.UseMockCages() then
		if isBody then
			self.deformerToPartMap = {
				LeftHand = model:FindFirstChild("LeftHand"),
				LeftLowerArm = model:FindFirstChild("LeftLowerArm"),
				LeftUpperArm = model:FindFirstChild("LeftUpperArm"),
				RightHand = model:FindFirstChild("RightHand"),
				RightLowerArm = model:FindFirstChild("RightLowerArm"),
				RightUpperArm = model:FindFirstChild("RightUpperArm"),
				LeftFoot = model:FindFirstChild("LeftFoot"),
				LeftLowerLeg = model:FindFirstChild("LeftLowerLeg"),
				LeftUpperLeg = model:FindFirstChild("LeftUpperLeg"),
				RightFoot = model:FindFirstChild("RightFoot"),
				RightLowerLeg = model:FindFirstChild("RightLowerLeg"),
				RightUpperLeg = model:FindFirstChild("RightUpperLeg"),
				UpperTorso = model:FindFirstChild("UpperTorso"),
				LowerTorso = model:FindFirstChild("LowerTorso"),
				Head = model:FindFirstChild("Head"),
			}
		else
			self.deformerToPartMap = {
				clothes = model:FindFirstChild(TestHelper.DefaultClothesName)
			}
		end
		self.connections = {
			LeftHand = "LeftLowerArm",
			LeftLowerArm = "LeftUpperArm",
			LeftUpperArm = "UpperTorso",
			RightHand = "RightLowerArm",
			RightLowerArm = "RightUpperArm",
			RightUpperArm = "UpperTorso",
			LeftFoot = "LeftLowerLeg",
			LeftLowerLeg = "LeftUpperLeg",
			LeftUpperLeg = "LowerTorso",
			RightFoot = "RightLowerLeg",
			RightLowerLeg = "RightUpperLeg",
			RightUpperLeg = "LowerTorso",
			UpperTorso = "LowerTorso",
			Head = "UpperTorso",
		}
	else
		self.deformerToPartMap = {}
		self.connections = {}
		self.deformerToPartMap = self:getDeformerToPartMap(model, isBody)

		local descendants = getDescendants({}, model)
		for _, desc in ipairs(descendants) do
			if desc:IsA("Motor6D") then
				local part0 = desc.Part0
				local part1 = desc.Part1
				if part0 and part1 then
					local deformer = self.deformerToPartMap[part1]
					if deformer then
						local connectedDeformer = self.deformerToPartMap[part0]
						if connectedDeformer then
							self.connections[deformer.Name] = connectedDeformer.Name
						end
					end
				end
			end
		end
	end
end

function ModelUtil:getConnectedDeformer(deformer)
	return self.connections[deformer]
end

function ModelUtil:getBounds(points)
	local _, firstPoint = next(points)
	if not firstPoint then
		return {
			Center = Vector3.new(),
			Width = 0,
			Height = 0,
			Depth = 0,
		}
	end

	local isVector = type(firstPoint) ~= "table"
	local minX = isVector and firstPoint.X or firstPoint.Position.X
	local maxX = isVector and firstPoint.X or firstPoint.Position.X
	local minY = isVector and firstPoint.Y or firstPoint.Position.Y
	local maxY = isVector and firstPoint.Y or firstPoint.Position.Y
	local minZ = isVector and firstPoint.Z or firstPoint.Position.Z
	local maxZ = isVector and firstPoint.Z or firstPoint.Position.Z

	local sum = Vector3.new(0, 0, 0)
	for _, point in ipairs(points) do
		local pt = isVector and point or point.Position
		minX = math.min(pt.X, minX)
		maxX = math.max(pt.X, maxX)
		minY = math.min(pt.Y, minY)
		maxY = math.max(pt.Y, maxY)
		minZ = math.min(pt.Z, minZ)
		maxZ = math.max(pt.Z, maxZ)
		sum = sum + pt
	end
	local centroid = sum / #points

	local bounds = {
		Center = Vector3.new(maxX + minX, maxY + minY, maxZ + minZ) / 2,
		Centroid = centroid,
		Width = math.abs(maxX - minX),
		Height = math.abs(maxY - minY),
		Depth = math.abs(maxZ - minZ),
		Top = {
			Front = {
				Left = Vector3.new(minX, maxY, minZ),
				Right = Vector3.new(maxX, maxY, minZ),
			},
			Back = {
				Left = Vector3.new(minX, maxY, maxZ),
				Right = Vector3.new(maxX, maxY, maxZ),
			},
		},
		Bottom = {
			Front = {
				Left = Vector3.new(minX, minY, minZ),
				Right = Vector3.new(maxX, minY, minZ),
			},
			Back = {
				Left = Vector3.new(minX, minY, maxZ),
				Right = Vector3.new(maxX, minY, maxZ),
			},
		},
		LargestExtentAxis = Enum.Axis.X,
	}

	if bounds.Width >= bounds.Height and bounds.Width >= bounds.Depth then
		bounds.LargestExtentAxis = Enum.Axis.X
	elseif bounds.Height >= bounds.Width and bounds.Height >= bounds.Depth then
		bounds.LargestExtentAxis = Enum.Axis.Y
	else
		bounds.LargestExtentAxis = Enum.Axis.Z
	end

	bounds.CFrame = CFrame.new(bounds.Center)

	return bounds
end

function ModelUtil.transparencyFromPropertyToLCEditor(transparency)
	transparency = transparency and transparency or 0
	return 100 - transparency * Constants.MAX_TRANSPARENCY
end

function ModelUtil.transparencyFromLCEditorToProperty(transparency)
	transparency = transparency and transparency or 0
	return 1 - (transparency / Constants.MAX_TRANSPARENCY)
end

return ModelUtil