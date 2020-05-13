local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	"Up",
	"Down",
})