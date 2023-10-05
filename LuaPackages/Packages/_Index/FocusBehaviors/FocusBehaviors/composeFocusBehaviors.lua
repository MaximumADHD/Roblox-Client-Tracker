local Packages = script.Parent.Parent
local FocusNavigation = require(Packages.FocusNavigation)
type ContainerFocusBehavior = FocusNavigation.ContainerFocusBehavior

local function composeFocusBehaviors(...: ContainerFocusBehavior): ContainerFocusBehavior
	local behaviors = { ... }
	return {
		onDescendantFocusChanged = function(new)
			for _, behavior in behaviors do
				if behavior.onDescendantFocusChanged then
					behavior.onDescendantFocusChanged(new)
				end
			end
		end,
		getTargets = function()
			local targets = {}
			for _, behavior in behaviors do
				local behaviorTargets = behavior.getTargets()
				for _, behaviorTarget in behaviorTargets do
					table.insert(targets, behaviorTarget)
				end
			end
			return targets
		end,
	}
end

return composeFocusBehaviors
