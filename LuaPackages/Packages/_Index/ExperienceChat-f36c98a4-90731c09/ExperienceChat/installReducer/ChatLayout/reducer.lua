local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

return Rodux.combineReducers({
	Alignment = require(script.Parent.alignment),
	ChatWindowSettings = require(script.Parent.windowSettings),
	ChatInputBarSettings = require(script.Parent.inputBarSettings),
})
