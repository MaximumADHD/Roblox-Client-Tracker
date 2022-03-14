local Packages = script.Parent.Parent
local enumerate = require(Packages.enumerate)

return enumerate("InputBindingKind", {
	"Begin",
	"End",
	"Step",
	"MoveStep",
})