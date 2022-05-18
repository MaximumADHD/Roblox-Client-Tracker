local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local ContextItem = ContextServices.ContextItem

local CalloutController = ContextItem:extend("CalloutController")

function CalloutController.new(overrideCalloutService)
	local self = {}

	self._calloutService = overrideCalloutService or game:GetService("CalloutService")
	assert(self._calloutService, "CalloutController requires a CalloutService")

	return setmetatable(self, CalloutController)
end

function CalloutController:defineCallout(definitionId, title, description, learnMoreUrl)
	self._calloutService:DefineCallout(definitionId, title, description, learnMoreUrl)
end

function CalloutController:attachCallout(definitionId, locationId, targetInstance)
	self._calloutService:AttachCallout(definitionId, locationId, targetInstance)
end

function CalloutController:detachCalloutsByDefinitionId(definitionId)
	self._calloutService:DetachCalloutsByDefinitionId(definitionId)
end

return CalloutController
