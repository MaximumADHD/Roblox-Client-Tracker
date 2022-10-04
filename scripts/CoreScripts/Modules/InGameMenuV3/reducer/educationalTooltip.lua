local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux
local InGameMenu = script.Parent.Parent
local DismissTooltip = require(InGameMenu.Actions.DismissTooltip)
local EducationTooltipPolicy = require(InGameMenu.Utility.EducationTooltipPolicy)

local function nextState()
	local foundFirst = false
	local state = {}
	for i, val in EducationTooltipPolicy.activeTooltipIdentifiers do
		local canShow = EducationTooltipPolicy.canShow(val)
		if canShow and not foundFirst then
			state[val] = true
			foundFirst = true
		else
			state[val] = false
		end
	end
	return state
end

return Rodux.createReducer(nextState(), {
	[DismissTooltip.name] = function(state, action)
		EducationTooltipPolicy.dismissForever(action.tooltipIdentifier);
		return nextState()
	end,
})
