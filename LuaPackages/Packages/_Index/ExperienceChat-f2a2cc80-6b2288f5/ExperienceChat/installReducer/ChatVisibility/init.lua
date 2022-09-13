local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	isChatInputBarEnabled = require(script.isChatInputBarEnabled),
	isChatWindowEnabled = require(script.isChatWindowEnabled),
	transparency = require(script.transparency),
})
