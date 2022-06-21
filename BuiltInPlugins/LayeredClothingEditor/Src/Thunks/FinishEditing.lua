local Workspace = game.Workspace
local PublishService = game:GetService("PublishService")

local Plugin = script.Parent.Parent.Parent
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local AccessoryUtil = AccessoryAndBodyToolSharedUtil.AccessoryUtil
local AvatarUtil = AccessoryAndBodyToolSharedUtil.AvatarUtil
local WrapUtil = AccessoryAndBodyToolSharedUtil.WrapUtil
local getDeformerToPartMap = AccessoryAndBodyToolSharedUtil.getDeformerToPartMap
local ItemCharacteristics = AccessoryAndBodyToolSharedUtil.ItemCharacteristics

local AnalyticsGlobals = require(Plugin.Src.Util.AnalyticsGlobals)

local GetFFlagAccessoryFittingToolAnalytics = require(Plugin.Src.Flags.GetFFlagAccessoryFittingToolAnalytics)

local function fromModelToAccessory(model)
	local accessory = Instance.new("Accessory", Workspace)
	model:GetChildren()[1].Parent = accessory
	accessory.Name = model.Name
	model:Destroy()
end

local function parentToAccessory(item)
	local accessory = Instance.new("Accessory", Workspace)
	item.Parent = accessory
	accessory.Name = item.Name
	item.Name = "Handle"
	return accessory
end

local function parentToTempModel(item)
	local tempModel = Instance.new("Model", Workspace)
	tempModel.Name = item.Name
	item.Parent = tempModel
	item.Name = "Handle"
	return tempModel
end

local function fixCFrame(item, cframe)
	local root = item
	if ItemCharacteristics.isAvatar(item) then
		root = AvatarUtil:getRootPart(item)
	end
	root.CFrame = cframe
end

local function cloneItem(sourceItem, editingItem)
	local clone = sourceItem:clone()
	clone.Anchored = false
	if ItemCharacteristics.isAvatar(editingItem) then
		fixCFrame(clone, AvatarUtil:getRootCFrame(editingItem))
	else
		fixCFrame(clone, editingItem.CFrame)
	end
	return clone
end

local function publishCageEdits(item, isClothes)
	local newIdsInner = {}
	local newIdsOuter = {}
	local deformerToPartMap = getDeformerToPartMap(item, not isClothes)
	if isClothes then
		for _, deformer in pairs(deformerToPartMap) do
			local id = PublishService:PublishCageMeshAsync(deformer, Enum.CageType.Inner)
			newIdsInner[deformer] = id
		end
	end
	for _, deformer in pairs(deformerToPartMap) do
		local id = PublishService:PublishCageMeshAsync(deformer, Enum.CageType.Outer)
		newIdsOuter[deformer] = id
	end

	for _, desc in ipairs(item:GetDescendants()) do
		if newIdsInner[desc] then
			desc.ReferenceMeshId = newIdsInner[desc]
		end
		if newIdsOuter[desc] then
			desc.CageMeshId = newIdsOuter[desc]
		end
	end
end

local function generateRigidAccessory(store, editingItem, sourceItem)
	local state = store:getState()
	local accessoryTypeInfo = state.selectItem.accessoryTypeInfo
	local attachmentPoint = state.selectItem.attachmentPoint
	local itemSize = state.selectItem.size

	local attachmentName = accessoryTypeInfo.Name
	local attachmentCFrameLocal = attachmentPoint.AttachmentCFrame
	local itemCFrameLocal = attachmentPoint.ItemCFrame

	local clone = cloneItem(sourceItem, editingItem)

	AccessoryUtil:createOrReuseAttachmentInstance(clone, editingItem.Parent, attachmentName, attachmentCFrameLocal, itemCFrameLocal)
	clone.Size = itemSize

	parentToAccessory(clone)
end

local function generateCagedAccessory(store, meshEditingContext, editingItem, sourceItem)
	local state = store:getState()
	local outerCageData = meshEditingContext:getOuterCageContext():getVertexData()
	local innerCageData = meshEditingContext:getInnerCageContext():getVertexData()
	local accessoryTypeInfo = state.selectItem.accessoryTypeInfo
	local attachmentPoint = state.selectItem.attachmentPoint

	local attachmentName = accessoryTypeInfo.Name
	local attachmentCFrameLocal = attachmentPoint.AttachmentCFrame
	local itemCFrameLocal = attachmentPoint.ItemCFrame

	local clone = cloneItem(sourceItem, editingItem)

	AccessoryUtil:clearWelds(clone)
	AccessoryUtil:createOrReuseAttachmentInstance(clone, editingItem.Parent, attachmentName, attachmentCFrameLocal, itemCFrameLocal)

	-- temporary bug workaround: LC item needs to be a child of a model in order for deformation API to work
	local tempModel = parentToTempModel(clone)

	WrapUtil:deformClothing(clone, innerCageData, Enum.CageType.Inner)
	WrapUtil:deformClothing(clone, outerCageData, Enum.CageType.Outer)

	publishCageEdits(clone, true)

	WrapUtil:renameDeformers(tempModel, sourceItem)

	fromModelToAccessory(tempModel)
end

local function generateCagedAvatar(meshEditingContext, editingItem, sourceItem)
	local outerCageData = meshEditingContext:getOuterCageContext():getVertexData()

	local clone = cloneItem(sourceItem, editingItem)

	clone.Parent = Workspace
	WrapUtil:deformBody(clone, outerCageData, Enum.CageType.Outer)

	publishCageEdits(clone, false)

	WrapUtil:renameDeformers(clone, sourceItem)
end

return function(meshEditingContext, editingItem, sourceItem, analytics)
	return function(store)
		if not editingItem or not sourceItem then
			return
		end

		if ItemCharacteristics.isClothes(editingItem) then
			if ItemCharacteristics.hasAnyCage(editingItem) then
				generateCagedAccessory(store, meshEditingContext, editingItem, sourceItem)
				if GetFFlagAccessoryFittingToolAnalytics() then
					analytics:getHandler("LayeredAccessoryPublished")()
					AnalyticsGlobals.HasPublished = true
				end
			else
				generateRigidAccessory(store, editingItem, sourceItem)
				if GetFFlagAccessoryFittingToolAnalytics() then
					analytics:getHandler("RigidAccessoryPublished")()
					AnalyticsGlobals.HasPublished = true
				end
			end
		elseif ItemCharacteristics.isAvatar(editingItem) then
			generateCagedAvatar(meshEditingContext, editingItem, sourceItem)
		end
	end
end