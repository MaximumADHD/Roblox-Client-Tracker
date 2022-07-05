local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ContextItem = Framework.ContextServices.ContextItem
local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local getFFlagMaterialManagerGlassNeonForceField = require(Plugin.Src.Flags.getFFlagMaterialManagerGlassNeonForceField)
local MaterialBrowserReducer = require(Plugin.Src.Reducers.MaterialBrowserReducer)

local Actions = Plugin.Src.Actions
local ClearMaterialWrapper = require(Actions.ClearMaterialWrapper)
local SetMaterialOverride = require(Actions.SetMaterialOverride)
local SetMaterialOverrides = require(Actions.SetMaterialOverrides)
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

local Util = Plugin.Src.Util
local ContainsPath = require(Util.ContainsPath)
local getMaterials = require(Util.getMaterials)
local getOverrides = require(Util.getOverrides)

local getFFlagMaterialManagerEnableTests = require(Plugin.Src.Flags.getFFlagMaterialManagerEnableTests)
local getFFlagMaterialManagerUIGlitchFix = require(Plugin.Src.Flags.getFFlagMaterialManagerUIGlitchFix)

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
		_overrideChangedListeners = {},

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
		self._uses2022MaterialsChanged = self._materialServiceWrapper:asInstance():GetPropertyChangedSignal("Use2022Materials"):Connect(function(value)
			self._store:dispatch(SetUse2022Materials(value))
		end)

		if getFFlagMaterialManagerUIGlitchFix() then
			self._store:dispatch(SetUse2022Materials(self._materialServiceWrapper:asService().Use2022Materials))
		end
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
end

function MaterialServiceController:getMaterialWrapper(material: Enum.Material, materialVariant: MaterialVariant?): _Types.Material
	return {
		Material = material,
		MaterialPath = getMaterialPath(material),
		MaterialType = getMaterialType(material),
		MaterialVariant = materialVariant,
	}
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
		-- If the way to categorize is changed, make it happen here
		assert(not self._materialChangedListeners[materialVariant], "Already connected to material changed")

		self._materialChangedListeners[materialVariant] = materialVariant.Changed:Connect(function(property)
			local materialWrapper = self:getMaterialWrapper(materialVariant.BaseMaterial, materialVariant)

			if property == "BaseMaterial" or property == "Name" then
				self:moveMaterial(materialWrapper)
			end

			self._store:dispatch(SetMaterialWrapper(materialWrapper))
		end)
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

	if not getFFlagMaterialManagerGlassNeonForceField() or self._materialChangedListeners[material] then
		self._materialChangedListeners[material]:Disconnect()
		self._materialChangedListeners[material] = nil
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

function MaterialServiceController:hasDefaultMaterial(material: Enum.Material, override: string): boolean
	if getFFlagMaterialManagerEnableTests() and override == "None" then
		override = ""
	end

	return (getMaterialName(material) == override or override == "") and
		not self._materialServiceWrapper:asService():GetMaterialVariant(material, override)
end

return MaterialServiceController
