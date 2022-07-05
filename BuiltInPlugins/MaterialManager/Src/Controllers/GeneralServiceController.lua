local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextItem = Framework.ContextServices.ContextItem

local ApplyToInstances = require(Plugin.Src.Util.ApplyToInstances)

local getFFlagMaterialManagerGridOverhaul = require(Plugin.Src.Flags.getFFlagMaterialManagerGridOverhaul)
local getFFlagMaterialManagerTopBarOverhaul = require(Plugin.Src.Flags.getFFlagMaterialManagerTopBarOverhaul)

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
	self._changeHistoryService:asService():SetWaypoint("Will Delete " .. instance.Name)
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

	assert(getFFlagMaterialManagerGridOverhaul(), "Enable FFlagMaterialManagerGridOverhaul to use this function.")
	if not self._loadedFiles[asset] then
		self._loadedFiles[asset] = self._insertService:asService():LoadLocalAsset(asset)
	end

	return self._loadedFiles[asset]	
end

function GeneralServiceController:SetSelection(selection: {})
	assert(getFFlagMaterialManagerTopBarOverhaul(), "Enable FFlagMaterialManagerTopBarOverhaul to use this function.")
	self._selection:asService():Set(selection)
end

function GeneralServiceController:ApplyToSelection(baseMaterial: Enum.Material, materialVariant: string?)
	local instances = self._selection:asService():Get()
	self._changeHistoryService:asService():SetWaypoint("Apply Material to Selection")
	ApplyToInstances(instances, baseMaterial, materialVariant)
	self._changeHistoryService:asService():SetWaypoint("Applied Material to Selection")
end

return GeneralServiceController
