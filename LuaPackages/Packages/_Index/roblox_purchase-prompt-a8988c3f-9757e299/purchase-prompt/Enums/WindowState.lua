local createEnum = require(script.Parent.createEnum)

local WindowState = createEnum("WindowState", {
	"Hidden",
	"Shown",
})

return WindowState