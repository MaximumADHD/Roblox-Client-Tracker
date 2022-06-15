local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	byMessageId = require(script.Parent.byMessageId),
	inOrder = require(script.Parent.inOrder),
})
