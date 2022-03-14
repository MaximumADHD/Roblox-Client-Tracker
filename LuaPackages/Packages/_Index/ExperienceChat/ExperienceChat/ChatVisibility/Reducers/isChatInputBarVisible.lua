local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.createReducer(true, {
	ChatTopBarButtonActivated = function(_, action: table): boolean
		return action.isVisible
	end,
	TextChatServiceChatWindowPropertyChanged = function(_, action: table): boolean
		return action.isVisible
	end,
})
