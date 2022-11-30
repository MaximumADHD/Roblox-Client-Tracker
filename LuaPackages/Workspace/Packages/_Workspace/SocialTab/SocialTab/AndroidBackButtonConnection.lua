--!nonstrict
local AndroidBackButtonConnection = function(GuiService, NotificationType)
	local backButtonConnection = nil

	local disconnect = function()
		if backButtonConnection then
			backButtonConnection:Disconnect()
			backButtonConnection = nil
		end
	end

	local connect = function(callback)
		if backButtonConnection then
			disconnect()
		end
		if GuiService then
			backButtonConnection = GuiService.ShowLeaveConfirmation:Connect(callback)
		end
	end

	local showExitDialog = function()
		if GuiService and NotificationType then
			GuiService:BroadcastNotification("", NotificationType.BACK_BUTTON_NOT_CONSUMED)
		end
	end

	return {
		disconnect = disconnect,
		connect = connect,
		showExitDialog = showExitDialog,
	}
end

return AndroidBackButtonConnection
