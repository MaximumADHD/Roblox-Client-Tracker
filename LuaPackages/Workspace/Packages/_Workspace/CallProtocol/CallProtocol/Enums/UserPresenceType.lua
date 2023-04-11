local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

export type UserPresenceType = "IN_EXPERIENCE" | "HOME"

return enumerate(script.Name, {
	InExperience = "IN_EXPERIENCE",
	Home = "HOME",
})
