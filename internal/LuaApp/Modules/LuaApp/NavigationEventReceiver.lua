local CoreGui = game:GetService("CoreGui")
local NotificationService = game:GetService("NotificationService")
local HttpService = game:GetService("HttpService")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)
local ExternalEventConnection = require(Modules.Common.RoactUtilities.ExternalEventConnection)

local AppPage = require(Modules.LuaApp.AppPage)
local SetAppPage = require(Modules.LuaApp.Actions.SetAppPage)

local NavigationEventReceiver = Roact.Component:extend("NavigationEventReceiver")

function NavigationEventReceiver:init()
	local function onRobloxEventReceived(event)
		if event.namespace == "Navigations" and event.detailType == "Destination" then
			local eventDetails = HttpService:JSONDecode(event.detail)
			if AppPage[eventDetails.appName] then
				self.props.setAppPage(AppPage[eventDetails.appName], eventDetails.parameters)
			else
				self.props.setAppPage(AppPage.None, eventDetails.parameters)
			end
		end
	end

	self.onRobloxEventReceived = onRobloxEventReceived
end

function NavigationEventReceiver:render()
	return Roact.createElement(ExternalEventConnection, {
		event = NotificationService.RobloxEventReceived,
		callback = self.onRobloxEventReceived,
	})
end

NavigationEventReceiver = RoactRodux.connect(function(store)
	return {
		setAppPage = function(...)
			return store:Dispatch(SetAppPage(...))
		end,
	}
end)(NavigationEventReceiver)

return NavigationEventReceiver