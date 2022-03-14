local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	byMessageId = require(script.byMessageId),
	byTextChannelId = require(script.byTextChannelId),
})
