local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagIrisEnumerateCleanupEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisEnumerateCleanupEnabled

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local enumerate = dependencies.enumerate

if GetFFlagIrisEnumerateCleanupEnabled() then
	local ErrorType = {
		CallerIsInAnotherCall = "CallerIsInAnotherCall" :: "CallerIsInAnotherCall",
		CalleeIsInAnotherCall = "CalleeIsInAnotherCall" :: "CalleeIsInAnotherCall",
		PlaceIsNotVoiceEnabled = "PlaceIsNotVoiceEnabled" :: "PlaceIsNotVoiceEnabled",
		UniverseIsNotVoiceEnabled = "UniverseIsNotVoiceEnabled" :: "UniverseIsNotVoiceEnabled",
		CallerIsNotVoiceEnabled = "CallerIsNotVoiceEnabled" :: "CallerIsNotVoiceEnabled",
		UniverseAgeIsNotValid = "UniverseAgeIsNotValid" :: "UniverseAgeIsNotValid",
		ReservedServerAccessCodeIsNotProvided = "ReservedServerAccessCodeIsNotProvided" :: "ReservedServerAccessCodeIsNotProvided",
	}

	return ErrorType
else
	return enumerate(script.Name, {
		CallerIsInAnotherCall = "CallerIsInAnotherCall",
		CalleeIsInAnotherCall = "CalleeIsInAnotherCall",
		PlaceIsNotVoiceEnabled = "PlaceIsNotVoiceEnabled",
		UniverseIsNotVoiceEnabled = "UniverseIsNotVoiceEnabled",
		CallerIsNotVoiceEnabled = "CallerIsNotVoiceEnabled",
		UniverseAgeIsNotValid = "UniverseAgeIsNotValid",
		ReservedServerAccessCodeIsNotProvided = "ReservedServerAccessCodeIsNotProvided",
	})
end
