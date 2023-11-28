local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagIrisEnumerateCleanupEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisEnumerateCleanupEnabled

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local enumerate = dependencies.enumerate

if GetFFlagIrisEnumerateCleanupEnabled() then
	export type CallStateType = "CallFinished" | "CallDeclined" | "CallMissed"

	local CallState = {
		Finished = "CallFinished" :: "CallFinished",
		Declined = "CallDeclined" :: "CallDeclined",
		Missed = "CallMissed" :: "CallMissed",
	}

	return CallState
else
	return enumerate(script.Name, {
		Finished = "CallFinished",
		Declined = "CallDeclined",
		Missed = "CallMissed",
	})
end
