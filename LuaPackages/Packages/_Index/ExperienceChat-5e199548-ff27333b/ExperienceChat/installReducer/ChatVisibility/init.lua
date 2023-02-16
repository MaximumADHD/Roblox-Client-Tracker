local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.combineReducers({
	isChatInputBarEnabled = require(script.isChatInputBarEnabled),
	isChatWindowEnabled = require(script.isChatWindowEnabled),
	isChatHotkeyEnabled = require(script.isChatHotkeyEnabled),
	transparency = require(script.transparency),
})
