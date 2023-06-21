local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local Pages = require(script.Parent.Parent.Enums.Pages)
local ContactListHeader = require(script.Parent.ContactListHeader)

return {
	stories = {
		ContactListHeader = function(props)
			return React.createElement(
				ContactListHeader,
				{ headerHeight = 48, currentPage = Pages.FriendList, dismissCallback = function() end }
			)
		end,
	},
	controls = {},
	state = {},
}
