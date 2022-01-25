--[[
	A ContextItem that abstracts use of ToastNotificationService.

	A plugin may provide an object implementing the Studio ToastNotificationService
	API to the constructor.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local ContextItem = ContextServices.ContextItem
-- TODO: When FFlagDevFrameworkUseCreateContext is retired remove this require
local Provider = ContextServices.Provider

local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

local getFFlagStudioToastNotificationsInLua = require(Plugin.Src.Flags.getFFlagStudioToastNotificationsInLua)

local ToastNotification = ContextItem:extend("ToastNotification")

function ToastNotification.new(notificationService)
	if not notificationService and getFFlagStudioToastNotificationsInLua() then
		notificationService = game:GetService("ToastNotificationService")
	end

	return setmetatable({
		_notificationService = notificationService
	}, ToastNotification)
end

function ToastNotification:destroy()
	self._notificationService = nil
end

if not FFlagDevFrameworkUseCreateContext then
	function ToastNotification:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, {root})
	end
end

function ToastNotification:showNotification(message, notificationId)
	if self._notificationService then
		self._notificationService:ShowNotification(message, notificationId)
	end
end

function ToastNotification:hideNotification(notificationId)
	if self._notificationService then
		self._notificationService:HideNotification(notificationId)
	end
end

return ToastNotification
