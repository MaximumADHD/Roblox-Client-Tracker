local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local deepCopy = Util.deepCopy

local Constants = require(script.Parent.Constants)

local function makeAction(localization, id, actionData, callBackFunction)
	return {
		Id = id,
		Text = localization:getText("Common", id),
		Data = actionData,
		OnItemClicked = callBackFunction,
	}
end

local function makePluginAction(localization, id)
	return {
		id = id,
		text = localization:getText("Common", id),
		allowBinding = false,
	}
end


local function getStepActions(localization)
	local actions = {}
	for key, value in pairs(Constants.StepActionIds) do
		actions[value] = makePluginAction(localization, value)
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
	 // F11 is also fullscreen. We probably don't want 2 different things bound to the same shortcut depending on focus.
	]]
	actions[Constants.StepActionIds.stepOverActionV2].defaultShortcut = "F10"
	actions[Constants.StepActionIds.stepIntoActionV2].defaultShortcut = "F11"
	actions[Constants.StepActionIds.stepOutActionV2].defaultShortcut = "Shift+F11"

	return actions
end

local function getCallstackActions(localization, callBackFunction)
	local actions = {}
	for key, value in pairs(Constants.CallstackActionIds) do
		actions[value] = makeAction(localization, value, nil, callBackFunction)
	end

	-- This is commented out until the Command Framework gets implemented, so that we can
	-- have unambiguous shortcuts for common actions.
	--[[actions[Constants.CallstackActionIds.CopySelected].defaultShortcut = "Ctrl+C"
	actions[Constants.CallstackActionIds.SelectAll].defaultShortcut = "Ctrl+A"]]

	return actions
end

local function getWatchActions(localization, actionData, callBackFunction)
	local actions = {}
	for key, value in pairs(Constants.WatchActionIds) do
		actions[value] = makeAction(localization, value, actionData, callBackFunction)
	end

	return actions
end

local function getBreakpointActions(localization, rowEnabled, isLogpoint, actionData, callBackFunction)
	local actions = {}
	local actionTypes = Constants.BreakpointActions
	if isLogpoint then
		actionTypes = Constants.LogpointActions
	end

	for key, value in pairs(actionTypes) do
		actions[value] = makeAction(localization, value, actionData, callBackFunction)
	end

	for key, value in pairs(Constants.CommonActions) do
		actions[value] = makeAction(localization, value, actionData, callBackFunction)
	end

	if rowEnabled then
		if isLogpoint then
			actions[Constants.LogpointActions.EnableLogpoint] = nil
		else
			actions[Constants.BreakpointActions.EnableBreakpoint] = nil
		end
	else
		if isLogpoint then
			actions[Constants.LogpointActions.DisableLogpoint] = nil
		else
			actions[Constants.BreakpointActions.DisableBreakpoint] = nil
		end
	end

	return actions
end

local function getBreakpointActionsOrder(rowEnabled, isLogpoint)
	local orderedActionsCopy = if isLogpoint
		then deepCopy(Constants.LogpointActionsOrder)
		else deepCopy(Constants.BreakpointActionsOrder)
	if rowEnabled then
		table.remove(orderedActionsCopy, Constants.EnableKey)
	else
		table.remove(orderedActionsCopy, Constants.DisableKey)
	end
	return orderedActionsCopy
end

local function getActionsWithShortcuts(localization)
	local toReturn = {}
	local stepActions = getStepActions(localization)
	for k, v in pairs(stepActions) do
		toReturn[k] = v
	end
	return toReturn
end

return {
	getCallstackActions = getCallstackActions,
	getWatchActions = getWatchActions,
	getBreakpointActions = getBreakpointActions,
	getActionsWithShortcuts = getActionsWithShortcuts,
	getBreakpointActionsOrder = getBreakpointActionsOrder,
}
