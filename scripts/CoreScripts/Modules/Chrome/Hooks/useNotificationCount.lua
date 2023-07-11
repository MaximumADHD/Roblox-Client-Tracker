local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Types = require(script.Parent.Parent.Service.Types)

return function(integration: Types.IntegrationProps?): number
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
