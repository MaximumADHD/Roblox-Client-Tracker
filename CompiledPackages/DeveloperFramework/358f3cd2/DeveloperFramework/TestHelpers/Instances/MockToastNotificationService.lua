local MockToastNotificationService = {}
MockToastNotificationService.__index = MockToastNotificationService

function MockToastNotificationService.new()
	local self = setmetatable({}, MockToastNotificationService)
	return self
end

function MockToastNotificationService:Destroy() end

function MockToastNotificationService:ShowNotification(_message, _notificationId) end

function MockToastNotificationService:HideNotification(_notificationId) end

return MockToastNotificationService
