-- TODO: Cleanup with FFlagUseBindingForUnreadChat

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)

type IntegrationProps = ChromePackage.IntegrationProps

return function(integration: IntegrationProps?): number
	if integration and integration.notification then
		local notification = integration.notification

		local notificationData, setNotificationData = React.useState(notification:get())

		React.useEffect(function()
			local conn = integration.notification:connect(function()
				setNotificationData(notification:get())
			end)

			return function()
				conn:disconnect()
			end
		end, { integration.id })

		if notificationData and notificationData.type == "count" then
			return notificationData.value :: number
		else
			return 0
		end
	else
		warn("notification object not found")
		return 0
	end
end
