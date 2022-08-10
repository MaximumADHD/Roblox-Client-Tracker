local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextItem = Framework.ContextServices.ContextItem

local Util = Plugin.Src.Util
local ApplyToBasePart = require(Util.ApplyToBasePart)
local ApplyToInstances = require(Util.ApplyToInstances)

local getFFlagMaterialManagerFixApplyToClicked = require(Plugin.Src.Flags.getFFlagMaterialManagerFixApplyToClicked)

local GeneralServiceController = ContextItem:extend("GeneralServiceController")

function GeneralServiceController.new(mock: boolean?)
	local self = setmetatable({
		_changeHistoryService = ServiceWrapper.new("ChangeHistoryService", mock),
		_insertService = ServiceWrapper.new("InsertService", mock),
		_selection = ServiceWrapper.new("Selection", mock),

		_loadedFiles = {},
		_mock = mock,
	}, GeneralServiceController)

	return self
end

function GeneralServiceController.mock()
	return GeneralServiceController.new(true)
end

function GeneralServiceController:destroy()
	self._changeHistoryService:destroy()
	self._insertService:destroy()
end

function GeneralServiceController:destroyWithUndo(instance: Instance)
	if not getFFlagMaterialManagerFixApplyToClicked() then
		self._changeHistoryService:asService():SetWaypoint("Will Delete " .. instance.Name)
	end
	instance.Parent = nil
	self._changeHistoryService:asService():SetWaypoint("Deleted " .. instance.Name)
end

function GeneralServiceController:LoadLocalAsset(asset: string)
	if self._mock then
		local model = Instance.new("Model")
		local meshPart = Instance.new("MeshPart")

		meshPart.Parent = model
		return model
	end

	if not self._loadedFiles[asset] then
		self._loadedFiles[asset] = self._insertService:asService():LoadLocalAsset(asset)
	end

	return self._loadedFiles[asset]
end

function GeneralServiceController:SetSelection(selection: {})
	self._selection:asService():Set(selection)
end

function GeneralServiceController:ApplyToBasePart(
	target: Instance,
	baseMaterial: Enum.Material,
	materialVariant: string?
)
	ApplyToBasePart(target, baseMaterial, materialVariant)
	self._changeHistoryService:asService():SetWaypoint("Applied Material to BasePart")
end

function GeneralServiceController:ApplyToSelection(baseMaterial: Enum.Material, materialVariant: string?)
	local instances = self._selection:asService():Get()
	if not getFFlagMaterialManagerFixApplyToClicked() then
		self._changeHistoryService:asService():SetWaypoint("Apply Material to Selection")
	end
	ApplyToInstances(instances, baseMaterial, materialVariant)
	self._changeHistoryService:asService():SetWaypoint("Applied Material to Selection")
end

function GeneralServiceController:saveMaterialVariant(instance: Instance)
	self._changeHistoryService:asService():SetWaypoint("Save Material Variant" .. instance.Name)
end

return GeneralServiceController
