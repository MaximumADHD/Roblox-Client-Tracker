local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	isChatInputBarVisible = require(script.isChatInputBarVisible),
	isChatWindowVisible = require(script.isChatWindowVisible),
})
