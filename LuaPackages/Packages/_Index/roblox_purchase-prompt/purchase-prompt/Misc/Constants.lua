local Root = script.Parent.Parent

local strict = require(Root.strict)

return strict({
	ABTests = strict({
		ROBUX_HEX_ICON = "RobuxHexIconABTestName"
	}, "Constants.ABTests")
}, "Constants")