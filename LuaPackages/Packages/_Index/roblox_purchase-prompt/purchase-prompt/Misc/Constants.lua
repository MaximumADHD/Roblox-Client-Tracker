local Root = script.Parent.Parent

local strict = require(Root.strict)

return strict({
	ABTests = strict({
		ADULT_CONFIRMATION = "AllUsers.Payments.AdultConfirmationABTest"
	}, "Constants.ABTests")
}, "Constants")
