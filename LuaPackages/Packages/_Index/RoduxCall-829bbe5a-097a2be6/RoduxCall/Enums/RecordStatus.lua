local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate) :: any

return enumerate(script.Name, {
	Finished = "CallFinished",
	Declined = "CallDeclined",
	Missed = "CallMissed",
})
