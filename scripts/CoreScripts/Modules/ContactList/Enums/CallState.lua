local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	Incoming = "Incoming",
	Outgoing = "Outgoing",
	Missed = "Missed",
})
