local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate) :: any

return enumerate(script.Name, {
	Idle = "Idle",
	Ringing = "Ringing",
	Accepting = "Accepting",
	Initializing = "Initializing",
	Connecting = "Connecting",
	Teleporting = "Teleporting",
	Joining = "Joining",
	Active = "Active",
	Failed = "Failed",
})
