local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

export type CallStatus = "Idle" | "Ringing" | "Accepting" | "Initializing" | "Connecting" | "Active"

return enumerate(script.Name, {
	Idle = "Idle",
	Ringing = "Ringing",
	Accpeting = "Accepting",
	Initializing = "Initializing",
	Connecting = "Connecting",
	Active = "Active",
})
