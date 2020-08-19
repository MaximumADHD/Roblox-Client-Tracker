local Loading = script.Parent.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local enumerate = require(Packages.enumerate)

return enumerate("ReloadingStyle", {
	"AllowReload",
	"LockReload",
})
