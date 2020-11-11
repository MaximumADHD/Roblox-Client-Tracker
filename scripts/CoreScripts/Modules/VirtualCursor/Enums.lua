local CorePackages = game:GetService("CorePackages")
local enumerate = require(CorePackages.enumerate)

return {
	MovementMode = enumerate("MovementMode", {
		"Standard",
		"Acceleration",
	}),
	InputMode = enumerate("InputMode", {
		"Linear",
		"Quad",
	}),
	SpeedRelativity = enumerate("SpeedRelativity", {
		"Pixel",
		"Viewport",
	})
}