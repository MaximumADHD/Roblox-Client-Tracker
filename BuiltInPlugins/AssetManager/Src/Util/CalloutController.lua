local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local ContextItem = ContextServices.ContextItem
local Provider = ContextServices.Provider

local CalloutController = ContextItem:extend("CalloutController")

function CalloutController.new(overrideCalloutService)
	local self = {}

	if overrideCalloutService then
		self._calloutService = overrideCalloutService
		self._calloutsEnabled = true
	else
		-- C++ parts of callouts are only created if both these flags are on
		-- Trying to use CalloutService when either is false will error
		-- So protect all accesses with this calloutsEnabled flag
		self._calloutsEnabled = game:GetFastFlag("StudioEnableTeachingCallouts") and game:GetFastFlag("StudioCalloutsInLua")
		self._calloutService = self._calloutsEnabled and game:GetService("CalloutService") or nil
	end

	if self._calloutsEnabled then
		assert(self._calloutService, "CalloutController requires a CalloutService if callouts are enabled")
	end

	return setmetatable(self, CalloutController)
end

function CalloutController:destroy()
	self._calloutService = nil
	self._calloutsEnabled = false
end

function CalloutController:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function CalloutController:defineCallout(definitionId, title, description, learnMoreUrl)
	if not self._calloutsEnabled then
		return
	end
	self._calloutService:DefineCallout(definitionId, title, description, learnMoreUrl)
end

function CalloutController:attachCallout(definitionId, locationId, targetInstance)
	if not self._calloutsEnabled then
		return
	end
	self._calloutService:AttachCallout(definitionId, locationId, targetInstance)
end

function CalloutController:detachCalloutsByDefinitionId(definitionId)
	if not self._calloutsEnabled then
		return
	end
	self._calloutService:DetachCalloutsByDefinitionId(definitionId)
end

return CalloutController