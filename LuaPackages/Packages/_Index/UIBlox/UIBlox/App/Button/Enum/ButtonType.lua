local ButtonRoot = script.Parent.Parent
local AppRoot = ButtonRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)

return enumerate("ButtonType", {
	"Alert",
	"PrimaryContextual",
	"PrimarySystem",
	"Secondary",
})