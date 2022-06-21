local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextItem = Framework.ContextServices.ContextItem

local getFFlagMaterialManagerGridOverhaul = require(Plugin.Src.Flags.getFFlagMaterialManagerGridOverhaul)

local GeneralServiceController = ContextItem:extend("GeneralServiceController")

function GeneralServiceController.new(mock: boolean?)
	local self = setmetatable({
		_changeHistoryService = ServiceWrapper.new("ChangeHistoryService", mock),
		_insertService = ServiceWrapper.new("InsertService", mock),

		_loadedFiles = {},
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
	assert(getFFlagMaterialManagerGridOverhaul(), "Enable FFlagMaterialManagerGridOverhaul to use this function.")
	if not self._loadedFiles[asset] then
		self._loadedFiles[asset] = self._insertService:asService():LoadLocalAsset(asset)
	end

	return self._loadedFiles[asset]	
end

return GeneralServiceController
