local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagIrisEnumerateCleanupEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisEnumerateCleanupEnabled

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local enumerate = dependencies.enumerate

if GetFFlagIrisEnumerateCleanupEnabled() then
	local FriendAction = {
		NoAction = "" :: "",
		Block = "Block" :: "Block",
		Unfriend = "Unfriend" :: "Unfriend",
	}

	return FriendAction
else
	return enumerate(script.Name, {
		NoAction = "",
		Block = "Block",
		Unfriend = "Unfriend",
	})
end
