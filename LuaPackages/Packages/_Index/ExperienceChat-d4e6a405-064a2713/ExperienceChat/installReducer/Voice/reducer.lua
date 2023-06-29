local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

return Rodux.combineReducers({
	participants = require(script.Parent.participants),
	isEnabled = require(script.Parent.isEnabled),
})
