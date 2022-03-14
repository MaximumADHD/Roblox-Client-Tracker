local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

return enumerate(script.Name, {
	Up = "Up",
	Down = "Down",
	Left = "Left",
	Right = "Right",
})
