local createEnum = require(script.Parent.createEnum)

local UpsellFlow = createEnum("UpsellFlow", {
	"Web",
	"Mobile",
	"Xbox",
	"CLB",
	"None",
})

return UpsellFlow