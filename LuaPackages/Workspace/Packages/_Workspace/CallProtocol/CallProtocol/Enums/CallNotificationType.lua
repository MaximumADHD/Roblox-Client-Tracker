local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

export type CallNotificationType = "MISS_CALL" | "UPDATE"

return enumerate(script.Name, {
	MissCall = "MISS_CALL",
	Update = "UPDATE",
})
