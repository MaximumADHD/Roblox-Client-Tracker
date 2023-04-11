local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

export type ParticipantStatus = "INVITED" | "JOINED"

return enumerate(script.Name, {
	Invited = "INVITED",
	Joined = "JOINED",
})
