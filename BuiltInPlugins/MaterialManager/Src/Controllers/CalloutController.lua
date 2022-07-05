local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local ServiceWrapper = Framework.TestHelpers.ServiceWrapper

local ContextServices = Framework.ContextServices
local ContextItem = ContextServices.ContextItem

local CalloutController = ContextItem:extend("CalloutController")

function CalloutController.new(mock: boolean?)
	local self = {}

	self._calloutService = ServiceWrapper.new("CalloutService", mock)
	assert(self._calloutService, "CalloutController requires a CalloutService")

	return setmetatable(self, CalloutController)
end

function CalloutController.mock()
	return CalloutController.new(true)
end

function CalloutController:destroy()
	self._calloutService = nil
end

function CalloutController:defineCallout(definitionId, title, description, learnMoreUrl)
	self._calloutService:asService():DefineCallout(definitionId, title, description, learnMoreUrl)
end

function CalloutController:attachCallout(definitionId, locationId, targetInstance)
	self._calloutService:asService():AttachCallout(definitionId, locationId, targetInstance)
end

function CalloutController:detachCalloutsByDefinitionId(definitionId)
	self._calloutService:asService():DetachCalloutsByDefinitionId(definitionId)
end

return CalloutController
