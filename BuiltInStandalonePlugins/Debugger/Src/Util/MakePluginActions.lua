local Constants = require(script.Parent.Constants)

local function makeAction(localization, id)
	return {
		id = id,
		text = localization:getText("Common", id),
		allowBinding = false,
	}
end

local function getCallstackActions(localization)
	local actions = {}
	for key, value in pairs(Constants.CallstackActionIds) do
		actions[value] = makeAction(localization, value)
	end

	actions[Constants.CallstackActionIds.CopySelected].defaultShortcut = "Ctrl+C"
	actions[Constants.CallstackActionIds.DeleteSelected].defaultShortcut = "Delete"
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

return {
	getCallstackActions = getCallstackActions,
	getWatchActions = getWatchActions,
	getBreakpointActions = getBreakpointActions,
	getLogpointActions = getLogpointActions,
}
