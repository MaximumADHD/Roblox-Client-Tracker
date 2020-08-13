local AlertRoot = script.Parent.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	"Bottom",
	"Top",
	"Right",
	"Left",
})
