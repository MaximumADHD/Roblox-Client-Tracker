local MockGuiService = {}
MockGuiService.__index = MockGuiService

function MockGuiService.new()
	local event = Instance.new("BindableEvent")

	local self = {
		broadcasts = {},
		NativeClose = {
			Connect = function(_, callback)
				return event.Event:Connect(callback)
			end,
		},
		MenuIsOpen = false,
		openedMenus = {},
	}
	setmetatable(self, {
		__index = MockGuiService,
	})
	return self
end

function MockGuiService:SetMenuIsOpen(isMenuOpen, menuName)
	if isMenuOpen then
		table.insert(self.openedMenus, menuName)
	else
		local position = table.find(self.openedMenus, menuName)
		if position then
			table.remove(self.openedMenus, position)
		end
	end

	self.MenuIsOpen = #self.openedMenus > 0
end

function MockGuiService:BroadcastNotification(data, notification)
	table.insert(
		self.broadcasts,
		{
			data = data,
			notification = notification,
		})
end

function MockGuiService:GetNotificationTypeList()
	return {
		NATIVE_EXIT = 35,
		RESTART_APP = 41,
	}
end

return MockGuiService
