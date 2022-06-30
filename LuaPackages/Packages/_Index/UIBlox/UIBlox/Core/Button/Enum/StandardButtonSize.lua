local Button = script.Parent.Parent.Parent
local UIBlox = Button.Parent
local Packages = UIBlox.Parent
local enumerate = require(Packages.enumerate)

return enumerate("StandardButtonSize", {
	"Regular",
	"Small",
	"XSmall",
})
