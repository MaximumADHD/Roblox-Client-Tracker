local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate) :: any

return enumerate(script.Name, {
	Offline = "Offline",
	Online = "Online",
	InGame = "InGame",
	InStudio = "InStudio",
	Invisible = "Invisible",
})
