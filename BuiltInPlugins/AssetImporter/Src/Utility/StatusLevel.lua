local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local enumerate = Framework.Util.enumerate

return enumerate("StatusLevel", {
	Error = "Error",
	Warning = "Warning",
})
