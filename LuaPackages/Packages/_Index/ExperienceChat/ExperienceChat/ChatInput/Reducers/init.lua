local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	byTargetChannelDisplayName = require(script.byTargetChannelDisplayName),
})
