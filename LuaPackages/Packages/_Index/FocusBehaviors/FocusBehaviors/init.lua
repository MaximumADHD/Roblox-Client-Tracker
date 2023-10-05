--!strict
local Packages = script.Parent
local FocusNavigation = require(Packages.FocusNavigation)
type ContainerFocusBehavior = FocusNavigation.ContainerFocusBehavior

local composeFocusBehaviors = require(script.composeFocusBehaviors)

local function defaultDescendantBehavior(default: GuiObject?): ContainerFocusBehavior
	return {
		getTargets = function()
			return if default then { default } else {}
		end,
	}
end

local function mostRecentDescendantBehavior(): ContainerFocusBehavior
	local mostRecent = nil

	return {
		onDescendantFocusChanged = function(new)
			mostRecent = if new then new else mostRecent
		end,
		getTargets = function()
			return if mostRecent then { mostRecent } else {}
		end,
	}
end

local function mostRecentDescendantOrDefaultBehavior(default: GuiObject?)
	return composeFocusBehaviors(mostRecentDescendantBehavior(), defaultDescendantBehavior(default))
end

return {
	default = defaultDescendantBehavior,
	mostRecent = mostRecentDescendantBehavior,
	mostRecentOrDefault = mostRecentDescendantOrDefaultBehavior,

	composeFocusBehaviors = composeFocusBehaviors,
}
