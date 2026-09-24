local main = script.Parent.Parent
local Packages = main.Parent

local enumerate = require(Packages.enumerate)

return enumerate("ViewType", {
	"Grid",
	"List",
})
