local MockToastNotificationService = {}
MockToastNotificationService.__index = MockToastNotificationService

function MockToastNotificationService.new()
	local self = setmetatable({}, MockToastNotificationService)
	return self
end

function MockToastNotificationService:ShowNotification(message, notificationId)
end

function MockToastNotificationService:HideNotification(notificationId)
end

return MockToastNotificationService
