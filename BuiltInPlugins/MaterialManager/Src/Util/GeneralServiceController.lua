local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextItem = Framework.ContextServices.ContextItem

local GeneralServiceController = ContextItem:extend("GeneralServiceController")

function GeneralServiceController.new(mock: boolean?)
	local self = setmetatable({
		_changeHistoryService = ServiceWrapper.new("ChangeHistoryService", mock)
	}, GeneralServiceController)

	return self
end

function GeneralServiceController.mock()
	return GeneralServiceController.new(true)
end

function GeneralServiceController:destroy()
	self._changeHistoryService:destroy()
end

function GeneralServiceController:destroyWithUndo(instance: Instance)
	self._changeHistoryService:asService():SetWaypoint("Will Delete " .. instance.Name)
	instance.Parent = nil
	self._changeHistoryService:asService():SetWaypoint("Deleted " .. instance.Name)
end

return GeneralServiceController
