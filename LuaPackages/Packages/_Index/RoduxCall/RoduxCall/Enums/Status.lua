local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate) :: any

return enumerate(script.Name, {
	Connecting = "Connecting",
	Active = "Active",
})
