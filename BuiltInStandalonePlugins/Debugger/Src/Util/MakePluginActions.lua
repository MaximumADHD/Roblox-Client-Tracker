local Constants = require(script.Parent.Constants)

local function makeAction(localization, id)
	return {
		id = id,
		text = localization:getText("Common", id),
		allowBinding = false,
	}
end

local function getStepActions(localization)
	local actions = {}
	for key, value in pairs(Constants.StepActionIds) do
		actions[value] = makeAction(localization, value)
	end

	--[[ TODO https://jira.rbx.com/browse/RIDE-6132
	// On PC, stepIntoAction is bound to shortcut key F11.
	// On Mac, F11 is consumed by the OS and never even gets to the App, so
	// we can't use it.  Use Ctrl-F11 instead.
	// Note we are doing this immediately after calling setupUi (where F11 is
	// bound to stepIntoAction) and before any settings are loaded, so we should
	// be fine if the user has modified stepIntoAction to some custom shortcut.
	// Also note on Mac that "Ctrl" -> Command key, "Meta" -> Control key:
	/*
	 https://stackoverflow.com/questions/16809139/qt-how-to-define-cmdkey-shortcut-for-mac
	 */
	 // F11 is also fullscreen. We probably don't want 2 differnt things bound to the same shortcut depending on focus.
	]]
	actions[Constants.StepActionIds.stepOverActionV2].defaultShortcut = "F10"
	actions[Constants.StepActionIds.stepIntoActionV2].defaultShortcut = "F11"
	actions[Constants.StepActionIds.stepOutActionV2].defaultShortcut = "Shift+F11"

	return actions
end

local function getCallstackActions(localization)
	local actions = {}
	for key, value in pairs(Constants.CallstackActionIds) do
		actions[value] = makeAction(localization, value)
	end

	actions[Constants.CallstackActionIds.CopySelected].defaultShortcut = "Ctrl+C"
	actions[Constants.CallstackActionIds.SelectAll].defaultShortcut = "Ctrl+A"

	return actions
end

local function getWatchActions(localization)
	local actions = {}
	for key, value in pairs(Constants.WatchActionIds) do
		actions[value] = makeAction(localization, value)
	end

	return actions
end

local function getBreakpointActions(localization, rowEnabled)
	local actions = {}
	for key, value in pairs(Constants.BreakpointActions) do
		actions[value] = makeAction(localization, value)
	end

	if rowEnabled then
		actions[Constants.BreakpointActions.EnableBreakpoint] = nil
	else
		actions[Constants.BreakpointActions.DisableBreakpoint] = nil
	end

	return actions
end

local function getLogpointActions(localization, rowEnabled)
	local actions = {}
	for key, value in pairs(Constants.LogpointActions) do
		actions[value] = makeAction(localization, value)
	end

	if rowEnabled then
		actions[Constants.LogpointActions.EnableLogpoint] = nil
	else
		actions[Constants.LogpointActions.DisableLogpoint] = nil
	end

	return actions
end

local function getActionsWithShortcuts(localization)
	local toReturn = {}
	local callstackActions = getCallstackActions(localization)
	local stepActions = getStepActions(localization)
	for k,v in pairs(callstackActions) do
		toReturn[k] = v
	end
	for k,v in pairs(stepActions) do
		toReturn[k] = v
	end
	return stepActions
end

return {
	getCallstackActions = getCallstackActions,
	getWatchActions = getWatchActions,
	getBreakpointActions = getBreakpointActions,
	getLogpointActions = getLogpointActions,
	getActionsWithShortcuts = getActionsWithShortcuts,
}
