local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local CallerNotification = require(script.Parent.CallerNotification)

return {
	stories = {
		Calling = function(props)
			return React.createElement(CallerNotification, {
				caller = {
					userId = 1,
					username = "SuperCoolUsername",
					state = "Calling",
				},
			})
		end,
		Connecting = function(props)
			return React.createElement(CallerNotification, {
				caller = {
					userId = 1,
					username = "SuperCoolUsername",
					state = "Connecting",
				},
			})
		end,
		Active = function(props)
			return React.createElement(CallerNotification, {
				caller = {
					userId = 1,
					username = "SuperCoolUsername",
					state = "Active",
				},
			})
		end,
	},
	controls = {},
}
