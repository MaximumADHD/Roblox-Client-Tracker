local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local ContactList = RobloxGui.Modules.ContactList
local Pages = require(ContactList.Enums.Pages)

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(page: Pages.PagesType)
	return {
		page = page,
	}
end)
