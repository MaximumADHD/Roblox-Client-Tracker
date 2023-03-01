local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate) :: any

return enumerate(script.Name, {
	Incoming = "Incoming",
	Missed = "Missed",
	Outgoing = "Outgoing",
})
