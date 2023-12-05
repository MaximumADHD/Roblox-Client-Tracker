local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	Players = require(ProjectRoot.ExperienceChat.installReducer.Players),
})
