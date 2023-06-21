local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

return function(integration)
	if not integration or not integration.notification then
		warn("notification object not found")
		return 0
	end

	local notification, setNotification = React.useState(integration.notification:get())

	React.useEffect(function()
		local conn = integration.notification:connect(function()
			setNotification(integration.notification:get())
		end)

		return function()
			conn:disconnect()
		end
	end, { integration.id })

	if notification and notification.type == "count" then
		return notification.value
	else
		return 0
	end
end
