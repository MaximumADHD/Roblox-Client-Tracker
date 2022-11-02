local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	InGame = "inGame",
	InStudio = "inStudio",
	Offline = "offline",
	Online = "online",
})
