local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ContactList = script:FindFirstAncestor("ContactList")

local ContactListContext = require(ContactList.Context.ContactListContext)

export type Analytics = { fireEvent: (name: any, additionalArgs: any?) -> () }

local useAnalytics = function(): Analytics
	local contactListContext = React.useContext(ContactListContext)

	return {
		fireEvent = contactListContext.fireAnalyticsEvent,
	}
end

return useAnalytics
