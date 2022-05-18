local Workspace = game.Workspace
local PublishService = game:GetService("PublishService")

local Plugin = script.Parent.Parent.Parent

local ModelUtil = require(Plugin.Src.Util.ModelUtil)
local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)

game:DefineFastFlag("UnanchorAccessoryOnGeneration", false)

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
	local root = ModelUtil:getRootPart(item)
	root.CFrame = cframe
end

local function cloneItem(sourceItem, editingItem)
	local clone = sourceItem:clone()
	if game:getFastFlag("UnanchorAccessoryOnGeneration") then
		clone.Anchored = false
	end
	fixCFrame(clone, ModelUtil:getRootCFrame(editingItem))
	return clone
end

local function publishCageEdits(item, isClothes)
	local newIdsInner = {}
	local newIdsOuter = {}
	local deformerToPartMap = ModelUtil:getDeformerToPartMap(item, not isClothes)
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

	local clone = cloneItem(sourceItem, editingItem)

	ModelUtil:createOrReuseAttachmentInstance(clone, editingItem.Parent, accessoryTypeInfo, attachmentPoint)
	clone.Size = itemSize

	parentToAccessory(clone)
end

local function generateCagedAccessory(store, editingItem, sourceItem)
	local state = store:getState()
	local pointData = state.cageData.pointData
	local accessoryTypeInfo = state.selectItem.accessoryTypeInfo
	local attachmentPoint = state.selectItem.attachmentPoint

	local clone = cloneItem(sourceItem, editingItem)

	ModelUtil:clearWelds(clone)
	ModelUtil:createOrReuseAttachmentInstance(clone, editingItem.Parent, accessoryTypeInfo, attachmentPoint)

	-- temporary bug workaround: LC item needs to be a child of a model in order for deformation API to work
	local tempModel = parentToTempModel(clone)
	ModelUtil:deformClothing(clone, pointData, Enum.CageType.Inner)
	ModelUtil:deformClothing(clone, pointData, Enum.CageType.Outer)

	publishCageEdits(clone, true)

	ModelUtil:cleanupDeformerNames(tempModel, sourceItem)

	fromModelToAccessory(tempModel)
end

local function generateCagedAvatar(store, editingItem, sourceItem)
	local state = store:getState()
	local pointData = state.cageData.pointData

	local clone = cloneItem(sourceItem, editingItem)

	clone.Parent = Workspace
	ModelUtil:deformAvatar(clone, pointData, Enum.CageType.Outer)

	publishCageEdits(clone, false)

	ModelUtil:cleanupDeformerNames(clone, sourceItem)
end

return function(editingItem, sourceItem)
	return function(store)
		if not editingItem or not sourceItem then
			return
		end

		if ItemCharacteristics.isClothes(editingItem) then
			if ItemCharacteristics.hasAnyCage(editingItem) then
				generateCagedAccessory(store, editingItem, sourceItem)
			else
				generateRigidAccessory(store, editingItem, sourceItem)
			end
		elseif ItemCharacteristics.isAvatar(editingItem) then
			generateCagedAvatar(store, editingItem, sourceItem)
		end
	end
end
