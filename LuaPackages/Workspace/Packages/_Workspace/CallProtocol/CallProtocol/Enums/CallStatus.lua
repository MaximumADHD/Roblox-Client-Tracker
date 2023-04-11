local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

export type CallStatus = "IDLE" | "RINGING" | "ACTIVE"

return enumerate(script.Name, {
	Idle = "IDLE",
	Ringing = "RINGING",
	Active = "ACTIVE",
})
