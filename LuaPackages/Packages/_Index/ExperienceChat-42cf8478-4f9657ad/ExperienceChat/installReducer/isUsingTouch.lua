local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local LastInputTypeChanged = require(ExperienceChat.Actions.LastInputTypeChanged)

return Rodux.createReducer(false, {
	[LastInputTypeChanged.name] = function(state: boolean, action: LastInputTypeChanged.Action)
		if action.lastInputTypeUsed == Enum.UserInputType.Touch then
			return true
		elseif action.lastInputTypeUsed == Enum.UserInputType.Keyboard then
			return false
		else
			return state
		end
	end :: any,
})
