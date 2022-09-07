local Core = script.Parent.Parent.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	"State1",
	"State2",
	"State3",
	"State4",
})
