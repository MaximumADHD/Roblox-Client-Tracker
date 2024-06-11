--!nocheck
local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	Expired = "Expired",
	InviterNotInExperience = "InviterNotInExperience",
	Valid = "Valid",
})
