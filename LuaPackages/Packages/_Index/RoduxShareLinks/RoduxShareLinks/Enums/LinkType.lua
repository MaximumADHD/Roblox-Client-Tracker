--!nocheck
local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	Unset = "Unset",
	ContentPost = "ContentPost",
	ExperienceInvite = "ExperienceInvite",
	FriendInvite = "FriendInvite",
	ScreenshotInvite = "ScreenshotInvite",
})
