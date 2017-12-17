local Modules = script.Parent.Parent.Parent

local Components = Modules.Components
local BaseView = require(Modules.Views.Phone.BaseScreen)

local Create = require(Modules.Create)
local ActionType = require(Modules.ActionType)
local AlertModel = require(Modules.Models.Alert)

local DialogComponents = require(Components.DialogComponents)

local Alert = BaseView:Template()

function Alert.new(appState, route)
	local self = {
		appState = appState,
		route = route,
		alerts = {},
	}
	setmetatable(self, {__index = Alert})

	self.rbx = Create.new"Frame" {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}

	self.alertDialog = DialogComponents.AlertDialog.new(appState, nil, nil)
	self.alertDialog.rbx.Parent = self.rbx

	self.alerts = nil
	self.alert = nil

	self.alertDialog.accepted.Event:Connect(function()
		if self.alert ~= nil then
			self.appState.store:Dispatch({
				type = ActionType.DeleteAlert,
				alert = self.alert,
			})
		end
	end)

	self.appState.store.Changed:Connect(function(current, previous)
		if current ~= previous then
			self:Update(current.AppState.alerts)
		end
	end)

	return self
end

function Alert:Update(alerts)
	if alerts and alerts ~= self.alerts then
		if #(alerts.keys) >= 1 then
			local alertId = alerts.keys[1]
			local alert = alerts.values[alertId]
			if alert.type == AlertModel.AlertType.DIALOG then
				self.alertDialog:Update(alert)
				self.alertDialog:Prompt()
			else
				warn("Unhandled AlertType")
			end
			self.alert = alert
		end
		self.alerts = alerts
	end
end

return Alert