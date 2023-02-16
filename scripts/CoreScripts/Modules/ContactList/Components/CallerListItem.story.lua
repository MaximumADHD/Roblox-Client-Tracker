local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local CallerListItem = require(script.Parent.CallerListItem)

return {
	stories = {
		Incoming = function(props)
			return React.createElement(CallerListItem, {
				caller = {
					userId = 1,
					username = "SuperCoolUsername",
					state = "Incoming",
				},
				showDivider = props.controls.showDivider,
			})
		end,
		Missed = function(props)
			return React.createElement(CallerListItem, {
				caller = {
					userId = 1,
					username = "SuperCoolUsername",
					state = "Missed",
				},
				showDivider = props.controls.showDivider,
			})
		end,
		Outgoing = function(props)
			return React.createElement(CallerListItem, {
				caller = {
					userId = 1,
					username = "SuperCoolUsername",
					state = "Outgoing",
				},
				showDivider = props.controls.showDivider,
			})
		end,
	},
	controls = {
		showDivider = true,
	},
}
