local Packages = script.Parent.Parent.Parent.Parent.Parent
local enumerate = require(Packages.enumerate)

local NavigationDirection = enumerate("NavigationDirection", {
	"IsLeft",
	"IsRight",
})

return NavigationDirection
