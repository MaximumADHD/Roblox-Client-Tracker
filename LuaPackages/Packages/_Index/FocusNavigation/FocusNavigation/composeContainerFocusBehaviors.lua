local types = require(script.Parent.types)
type ContainerFocusBehavior = types.ContainerFocusBehavior

local function composeContainerFocusBehaviors(...: ContainerFocusBehavior): ContainerFocusBehavior
	local behaviors = { ... }
	return {
		onDescendantFocusChanged = function(new)
			for _, behavior in behaviors do
				if behavior.onDescendantFocusChanged then
					behavior.onDescendantFocusChanged(new)
				end
			end
		end,
		getTarget = function()
			-- TODO: For now, this will not account for whether or not a target
			-- is valid as long as it's non-nil. This should work fine with
			-- object refs but may not work correctly otherwise
			for _, behavior in behaviors do
				local target = behavior.getTarget()
				if target then
					return target
				end
			end
			return nil
		end,
	}
end

return composeContainerFocusBehaviors
