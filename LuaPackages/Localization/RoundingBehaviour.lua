local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

return enumerate("RoundingBehaviour", {
	"RoundToClosest",
	"Truncate",
})