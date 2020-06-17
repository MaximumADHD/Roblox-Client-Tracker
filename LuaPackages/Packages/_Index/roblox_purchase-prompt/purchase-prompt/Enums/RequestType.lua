local createEnum = require(script.Parent.createEnum)

local RequestType = createEnum("RequestType", {
	"None",
	"Asset",
	"Bundle",
	"GamePass",
	"Product",
	"Premium",
	"Subscription",
})

return RequestType