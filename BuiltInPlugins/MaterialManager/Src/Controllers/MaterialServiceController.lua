local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ContextItem = Framework.ContextServices.ContextItem
local ServiceWrapper = Framework.TestHelpers.ServiceWrapper
local join = Framework.Dash.join

local MaterialBrowserReducer = require(Plugin.Src.Reducers.MaterialBrowserReducer)

local Actions = Plugin.Src.Actions
local ClearMaterialWrapper = require(Actions.ClearMaterialWrapper)
local SetMaterialOverride = require(Actions.SetMaterialOverride)
local SetMaterialOverrides = require(Actions.SetMaterialOverrides)
local SetMaterial = require(Actions.SetMaterial)
local SetMaterialList = require(Actions.SetMaterialList)
local SetMaterialStatus = require(Actions.SetMaterialStatus)
local SetMaterialWrapper = require(Actions.SetMaterialWrapper)
local SetPath = require(Actions.SetPath)
local SetSearch = require(Actions.SetSearch)
local SetUse2022Materials = require(Actions.SetUse2022Materials)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPath = require(Constants.getMaterialPath)
local getMaterialType = require(Constants.getMaterialType)
local getMaterialName = require(Constants.getMaterialName)
local getSupportedMaterials = require(Constants.getSupportedMaterials)
local getTerrainFaceName = require(Constants.getTerrainFaceName)

local Util = Plugin.Src.Util
local CheckMaterialName = require(Util.CheckMaterialName)
local ContainsPath = require(Util.ContainsPath)
local GenerateMaterialName = require(Util.GenerateMaterialName)
local GenerateTerrainDetailName = require(Util.GenerateTerrainDetailName)
local getMaterials = require(Util.getMaterials)
local getOverrides = require(Util.getOverrides)

local getFFlagMaterialManagerTerrainDetails = require(
	Plugin.Src.Flags.getFFlagMaterialManagerTerrainDetails
)

local supportedMaterials = getSupportedMaterials()

export type Category = {
	Builtin: boolean,
	Categories: _Types.Map<string, Category>,
	CategoryNames: _Types.Array<string>,
	Materials: _Types.Array<_Types.Material>,
}

local MaterialServiceController = ContextItem:extend("MaterialServiceController")

function MaterialServiceController.new(store: any, mock: boolean?)
	local self = setmetatable({
		_materialChangedListeners = {},
		_terrainDetailAddedListeners = {},
		_terrainDetailRemovedListeners = {},
		_overrideChangedListeners = {},
		_changeHistoryService = ServiceWrapper.new("ChangeHistoryService", mock),

		_rootCategory = {
			Categories = {},
			CategoryNames = {},
			Materials = {},
		},
		_materialPaths = {},
		_materialWrappers = {},
		_materialStatuses = {},
		_materialServiceWrapper = ServiceWrapper.new("MaterialService", mock),
		_nameToEnum = {},

		_store = store,
		_mock = mock,
	}, MaterialServiceController)

	self._materialServiceAdded = self._materialServiceWrapper:asInstance().DescendantAdded:Connect(function(instance: Instance)
		if instance:IsA("MaterialVariant") then
			self:addMaterial(instance.BaseMaterial, instance, getMaterialPath(instance.BaseMaterial))
		end
	end)

	self._materialServiceRemoved = self._materialServiceWrapper:asInstance().DescendantRemoving:Connect(function(instance: Instance)
		if instance:IsA("MaterialVariant") then
			self:removeMaterial(instance)
		end
	end)

	self._materialServiceChanged = self._materialServiceWrapper:asInstance().Changed:Connect(function(property: string)
		if self._nameToEnum[property] then
			self._overrideChangedSignal:Fire(self._nameToEnum[property])
		end
	end)

	self._materialServiceStatus = self._materialServiceWrapper:asService().OverrideStatusChanged:Connect(function(material: Enum.Material)
		self._store:dispatch(SetMaterialStatus(material, self._materialServiceWrapper:asService():GetOverrideStatus(material)))
	end)

	if not mock then
		self._uses2022MaterialsChanged = self._materialServiceWrapper:asInstance():GetPropertyChangedSignal("Use2022Materials"):Connect(function()
			self._store:dispatch(SetUse2022Materials(self._materialServiceWrapper:asService().Use2022Materials))
		end)

		self._store:dispatch(SetUse2022Materials(self._materialServiceWrapper:asService().Use2022Materials))
	end

	for material, isSupported in pairs(supportedMaterials) do
		self:addMaterial(material, nil, getMaterialPath(material))
		if isSupported then
			self._overrideChangedListeners[material] = self._materialServiceWrapper:asService():GetMaterialOverrideChanged(material):Connect(function()
				self:updateOverrides(material)
			end)
		end
	end

	for _, descendant in ipairs(self._materialServiceWrapper:asInstance():GetDescendants()) do
		if descendant:IsA("MaterialVariant") then
			self:addMaterial(descendant.BaseMaterial, descendant, getMaterialPath(descendant.BaseMaterial))
		end
	end

	for materialEnum, _ in ipairs(supportedMaterials) do
		local materialName = getMaterialName(materialEnum) .. "Name"
		self._nameToEnum[materialName] = materialEnum
	end

	return self
end

function MaterialServiceController.mock(store: any)
	return MaterialServiceController.new(store, true)
end

function MaterialServiceController:destroy()
	self._materialServiceAdded:Disconnect()
	self._materialServiceRemoved:Disconnect()
	self._materialServiceChanged:Disconnect()
	self._materialServiceStatus:Disconnect()

	if not self._mock then
		self._uses2022MaterialsChanged:Disconnect()
	end

	self._materialServiceWrapper:destroy()

	for materialIndex, _ in ipairs(self._materialChangedListeners) do
		self._materialChangedListeners[materialIndex]:Disconnect()
		self._materialChangedListeners[materialIndex] = nil
	end

	for terrainDetailIndex, _ in ipairs(self._terrainDetailAddedListeners) do
		self._terrainDetailAddedListeners[terrainDetailIndex]:Disconnect()
		self._terrainDetailAddedListeners[terrainDetailIndex] = nil
	end

	for terrainDetailIndex, _ in ipairs(self._terrainDetailRemovedListeners) do
		self._terrainDetailRemovedListeners[terrainDetailIndex]:Disconnect()
		self._terrainDetailRemovedListeners[terrainDetailIndex] = nil
	end
end

function MaterialServiceController:getRootCategory(): Category
	return self._rootCategory
end

function MaterialServiceController:getMaterialWrapper(material: Enum.Material, materialVariant: MaterialVariant?): _Types.Material
	if getFFlagMaterialManagerTerrainDetails() then
		local materialWrapper = {
			Material = material,
			MaterialPath = getMaterialPath(material),
			MaterialType = getMaterialType(material),
			MaterialVariant = materialVariant,
		}
		if materialVariant then
			local terrainDetailUpdate
			for _, child in ipairs(materialVariant:GetChildren()) do
				if child:IsA("TerrainDetail") then
					local face = getTerrainFaceName(child.Face)
					terrainDetailUpdate = "TerrainDetail" .. face
					if not materialWrapper[terrainDetailUpdate] then
						materialWrapper = join(materialWrapper, {
							[terrainDetailUpdate] = child,
						})
					end
				end
			end
		end
		return materialWrapper
	else
		return {
			Material = material,
			MaterialPath = getMaterialPath(material),
			MaterialType = getMaterialType(material),
			MaterialVariant = materialVariant,
		}
	end

end

function MaterialServiceController:addCategory(path: _Types.Path, builtin: boolean): Category?
	return self:findCategory(path, builtin, true)
end

function MaterialServiceController:findCategory(path: _Types.Path, builtin: boolean?, add: boolean?): Category?
	assert(#path > 0 or not add, "Can't add root category")

	local category: Category = self._rootCategory
	for _, directory in ipairs(path) do
		if category.Categories[directory] then
			category = category.Categories[directory]
		elseif add then
			category.Categories[directory] = {
				Builtin = builtin,
				Categories = {},
				CategoryNames = {},
				Materials = {},
			}
			table.insert(category.CategoryNames, directory)
			table.sort(category.CategoryNames)

			category = category.Categories[directory]
		else
			return nil
		end
	end

	return category
end

function MaterialServiceController:addMaterial(material: Enum.Material, materialVariant: MaterialVariant?, moving: boolean)
	local path = getMaterialPath(material)
	local materialWrapper = self:getMaterialWrapper(material, materialVariant)
	local category = self:addCategory(path, not materialWrapper.MaterialVariant)
	assert(category, "Category to which a Material is added should exist, or be created")
	table.insert(category.Materials, materialWrapper)

	if materialVariant then
		self._materialPaths[materialVariant] = path
		self._materialWrappers[materialVariant] = materialWrapper

		if getFFlagMaterialManagerTerrainDetails() then
			for _, child in ipairs(materialVariant:GetChildren()) do
				assert(not self._materialChangedListeners[child], "Already connected to material changed")

				self._materialChangedListeners[child] = child.Changed:Connect(function(property)
					local materialWrapper = self:getMaterialWrapper(materialVariant.BaseMaterial, materialVariant)
					self._store:dispatch(SetMaterialWrapper(materialWrapper))
				end)
			end
		end

		-- If the way to categorize is changed, make it happen here
		assert(not self._materialChangedListeners[materialVariant], "Already connected to material changed")

		self._materialChangedListeners[materialVariant] = materialVariant.Changed:Connect(function(property)
			local materialWrapper = self:getMaterialWrapper(materialVariant.BaseMaterial, materialVariant)

			if property == "BaseMaterial" or property == "Name" then
				self:moveMaterial(materialWrapper)
			end

			self._store:dispatch(SetMaterialWrapper(materialWrapper))
		end)

		if getFFlagMaterialManagerTerrainDetails() then
			assert(not self._terrainDetailAddedListeners[materialVariant], "Already connected to material child added")

			self._terrainDetailAddedListeners[materialVariant] = materialVariant.ChildAdded:Connect(function(child)
				if child:IsA("TerrainDetail") then
					local materialWrapper = self:getMaterialWrapper(materialVariant.BaseMaterial, materialVariant)
					self._store:dispatch(SetMaterialWrapper(materialWrapper))
					
					assert(not self._materialChangedListeners[child], "Already connected to material changed")

					self._materialChangedListeners[child] = child.Changed:Connect(function(property)
						local materialWrapper = self:getMaterialWrapper(materialVariant.BaseMaterial, materialVariant)
						self._store:dispatch(SetMaterialWrapper(materialWrapper))
					end)
				end
			end)
		
			assert(not self._terrainDetailRemovedListeners[materialVariant], "Already connected to material child removed")
			
			self._terrainDetailRemovedListeners[materialVariant] = materialVariant.ChildRemoved:Connect(function(child)
				if child:IsA("TerrainDetail") then
					local materialWrapper = self:getMaterialWrapper(materialVariant.BaseMaterial, materialVariant)
					self._store:dispatch(SetMaterialWrapper(materialWrapper))
					
					if self._materialChangedListeners[child] then
						self._materialChangedListeners[child]:Disconnect()
						self._materialChangedListeners[child] = nil
					end
				end
			end)
		end
	else
		self._store:dispatch(SetMaterialStatus(material, self._materialServiceWrapper:asService():GetOverrideStatus(material)))
	end

	if supportedMaterials[material] then
		self:updateOverrides(material)
	end

	self._store:dispatch(SetMaterialWrapper(materialWrapper))

	local currentPath = self._store:getState().MaterialBrowserReducer.Path
	if ContainsPath(currentPath, path) then
		self:updateMaterialList()
	end
end

-- Built-in Materials will never be removed so there is not point in adding support for them here
function MaterialServiceController:removeMaterial(material: MaterialVariant, moving: boolean)
	local path = self._materialPaths[material]
	assert(path, "Cannot remove material that does not exist")
	local category = self:findCategory(path)
	assert(category, "Cannot remove material from category that does not exist")

	for index, materialInfo in ipairs(category.Materials) do
		if materialInfo.MaterialVariant == material then
			table.remove(category.Materials, index)
			break
		end
	end

	if self._materialChangedListeners[material] then
		self._materialChangedListeners[material]:Disconnect()
		self._materialChangedListeners[material] = nil
	end
	
	if getFFlagMaterialManagerTerrainDetails() then
		-- Clear terrainDetail listeners
		if self._terrainDetailAddedListeners[material] then
			self._terrainDetailAddedListeners[material]:Disconnect()
			self._terrainDetailAddedListeners[material] = nil
		end
		if self._terrainDetailRemovedListeners[material] then
			self._terrainDetailRemovedListeners[material]:Disconnect()
			self._terrainDetailRemovedListeners[material] = nil
		end
		for _, child in pairs(material:GetChildren()) do
			if self._materialChangedListeners[child] then
				self._materialChangedListeners[child]:Disconnect()
				self._materialChangedListeners[child] = nil
			end
		end
	end

	self._store:dispatch(ClearMaterialWrapper(self._store:getState().MaterialBrowserReducer.Materials[material]))
	self:updateOverrides(material.BaseMaterial)

	local currentPath = self._store:getState().MaterialBrowserReducer.Path
	if ContainsPath(currentPath, path) then
		self:updateMaterialList()
	end
end

function MaterialServiceController:moveMaterial(material: _Types.Material)
	assert(self._materialPaths[material.MaterialVariant], "Tried to move material that wasn't registered.")
	local path = self._materialPaths[material.MaterialVariant]
	assert(path, "Cannot remove material that does not exist")
	local category = self:findCategory(path)
	assert(category, "Cannot remove material from category that does not exist")

	for index, materialInfo in ipairs(category.Materials) do
		if materialInfo.MaterialVariant == material.MaterialVariant then
			table.remove(category.Materials, index)
			self:updateOverrides(materialInfo.Material)
			break
		end
	end

	self._materialPaths[material.MaterialVariant] = getMaterialPath(material.Material)
	category = self:addCategory(self._materialPaths[material.MaterialVariant], not material.MaterialVariant)
	assert(category, "Category to which a Material is added should exist, or be created")
	table.insert(category.Materials, material)
	self:updateOverrides(material.Material)

	local currentPath = self._store:getState().MaterialBrowserReducer.Path
	if ContainsPath(currentPath, path) or ContainsPath(self._materialPaths[material.MaterialVariant], material.MaterialPath) then
		self:updateMaterialList()
	end
end

function MaterialServiceController:updateOverrides(material: Enum.Material)
	local overrides, index = getOverrides(self._materialServiceWrapper:asService():GetBaseMaterialOverride(material), self:findCategory({}), material)

	self._store:dispatch(SetMaterialOverrides(material, overrides))
	self._store:dispatch(SetMaterialOverride(material, index))
end

function MaterialServiceController:setMaterialOverride(material: Enum.Material, materialVariant: string?)
	self._materialServiceWrapper:asService():SetBaseMaterialOverride(material, materialVariant or "")
end

function MaterialServiceController:updateMaterialList(path: _Types.Path?, search: string?)
	local state: MaterialBrowserReducer.State = self._store:getState().MaterialBrowserReducer
	local guaranteedPath = path or state.Path
	local guaranteedSearch = search or state.Search
	local category = self:findCategory(guaranteedPath)

	local materialList = getMaterials(category, guaranteedPath, guaranteedSearch)
	self._store:dispatch(SetMaterialList(materialList))
end

function MaterialServiceController:setPath(path: _Types.Path)
	self:updateMaterialList(path)
	self._store:dispatch(SetPath(path))
end

function MaterialServiceController:setSearch(search: string)
	self:updateMaterialList(nil, search)
	self._store:dispatch(SetSearch(search))
end

function MaterialServiceController:setMaterial(materialVariant: MaterialVariant)
	local material = self._materialWrappers[materialVariant]
	self._store:dispatch(SetMaterial(material))
end

function MaterialServiceController:hasDefaultMaterial(material: Enum.Material, override: string): boolean
	if override == "None" then
		override = ""
	end

	return (getMaterialName(material) == override or override == "") and
		not self._materialServiceWrapper:asService():GetMaterialVariant(material, override)
end

function MaterialServiceController:checkMaterialName(name: string, baseMaterial: Enum.Material): boolean
	local category = self:findCategory({})
	assert(category, "Tried to get materials for path which does not exist")

	local checkMaterialNameExists = CheckMaterialName(category, name, baseMaterial)
	return checkMaterialNameExists
end

function MaterialServiceController:createMaterialVariant(baseMaterial: Enum.Material?)
	local category = self:findCategory({})
	assert(category, "Tried to get materials for path which does not exist")

	local materialVariant = Instance.new("MaterialVariant")
	local generativeName = "MaterialVariant"
	materialVariant.Name = generativeName .. GenerateMaterialName(category, generativeName)
	materialVariant.BaseMaterial = baseMaterial or Enum.Material.Plastic
	materialVariant.StudsPerTile = 10
	self:setPath(getMaterialPath(materialVariant.BaseMaterial))
	materialVariant.Parent = game:GetService("MaterialService")

	self._changeHistoryService:asService():SetWaypoint("Create new Material Variant to" .. materialVariant.Name)
	return materialVariant
end

function MaterialServiceController:createTerrainDetail(materialVariant: MaterialVariant, face: string)
	local terrainDetail = Instance.new("TerrainDetail")
	local generativeName = "TerrainDetail"
	terrainDetail.Face = face
	terrainDetail.Name = generativeName .. GenerateTerrainDetailName(materialVariant, generativeName)
	terrainDetail.Parent = materialVariant

	self._changeHistoryService:asService():SetWaypoint("Create new Terrain Detail to" .. terrainDetail.Name)
	return terrainDetail
end

return MaterialServiceController
