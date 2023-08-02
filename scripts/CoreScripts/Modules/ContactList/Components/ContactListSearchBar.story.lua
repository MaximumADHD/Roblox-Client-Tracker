local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ContactListSearchBar = require(script.Parent.ContactListSearchBar)

return {
	stories = {
		ContactListSearchBar = function(props)
			return React.createElement(ContactListSearchBar)
		end,
	},
	controls = {},
	state = {},
}
