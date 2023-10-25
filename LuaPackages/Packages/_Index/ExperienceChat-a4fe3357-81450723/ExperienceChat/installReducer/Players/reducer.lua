local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

return Rodux.combineReducers({
	byUserId = require(script.Parent.byUserId),
	byDisplayName = require(script.Parent.byDisplayName),
	byUsername = require(script.Parent.byUsername),
	charactersByUserId = require(script.Parent.charactersByUserId),
})
