local Modules = script.Parent

local ActionType = require(Modules.ActionType)

local NotificationService = game:GetService("NotificationService")
local HttpService = game:GetService("HttpService")

local NavigationEventReceiver = {}

function NavigationEventReceiver:init(appState)

	local function onNaviationNotifications(eventData)
		if eventData.detailType == "Destination" then
			local decodedDetail = HttpService:JSONDecode(eventData.detail)
			if decodedDetail.appName then
				appState.store:Dispatch( {type = ActionType.OpenApp, appName = decodedDetail.appName, parameters = decodedDetail.parameters} )
			else
				appState.store:Dispatch( {type = ActionType.OpenApp, appName = eventData.detail, parameters = {}} )
			end
		end
	end

	local function onRobloxEventReceived(eventData)
		if eventData.namespace == "Navigations" then
			onNaviationNotifications(eventData)
		end
	end

	NotificationService.RobloxEventReceived:connect(onRobloxEventReceived)
end

return NavigationEventReceiver
