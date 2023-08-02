local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local enumerate = dependencies.enumerate

export type PagesType = "CallHistory" | "FriendList"

return enumerate(script.Name, {
	CallHistory = "CallHistory",
	FriendList = "FriendList",
})
