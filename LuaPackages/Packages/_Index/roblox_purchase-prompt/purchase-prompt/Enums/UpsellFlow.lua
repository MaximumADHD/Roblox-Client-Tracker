local createEnum = require(script.Parent.createEnum)

local UpsellFlow = createEnum("UpsellFlow", {
	"Web",
	"Mobile",
	"Xbox",
	"Unavailable",
	"None",
})

return UpsellFlow