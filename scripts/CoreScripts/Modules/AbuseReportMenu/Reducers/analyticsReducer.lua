local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Types = require(root.Components.Types)
local Constants = require(root.Components.Constants)
local Cryo = require(CorePackages.Packages.Cryo)

local Actions = Constants.AnalyticsActions

local FFlagInGameMenuAddChatLineReporting =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagInGameMenuAddChatLineReporting

-- using Cryo.Dictionary.join will not overwrite an existing value with one that is nil, use this for that
local ClearNillableValues = {
	typeofabuseSelection = Cryo.None,
	reasonSelection = Cryo.None,
}

local function analyticsReducer(state: Types.AnalyticsState, action: any): Types.AnalyticsState
	-- doesn't work w/o the cast for some reason
	local newState: Types.AnalyticsState = table.clone(state) :: Types.AnalyticsState
	local actionType = action.type

	if actionType == Actions.Reset then
		local menuEverShown = newState.menuEverShown
		newState = Constants.AnalyticsInitialState
		newState.menuEverShown = menuEverShown
	elseif actionType == Actions.SetMenuOpenedTimestamp then
		newState.menuEverShown = true
		newState.menuOpenedUnixTimestampMilliseconds = action.timestamp
	elseif actionType == Actions.IncrementExperiencePersonChanged then
		newState.experiencePersonChangeCount += 1
	elseif actionType == Actions.IncrementTypeofabuseChanged then
		newState.typeofabuseChangeCount += 1
	elseif actionType == Actions.IncrementPersonChanged then
		newState.personChangeCount += 1
	elseif actionType == Actions.IncrementReasonChanged then
		newState.reasonChangeCount += 1
	elseif actionType == Actions.IncrementCaptureScene then
		newState.captureSceneCount += 1
	elseif FFlagInGameMenuAddChatLineReporting and actionType == Actions.IncrementChatLineChanged then
		newState.chatLineChangeCount += 1
	elseif actionType == Actions.SetViewportInformation then
		newState.viewportSizeX = action.viewportSizeX
		newState.viewportSizeY = action.viewportSizeY
		newState.isPortraitMode = action.viewportSizeX < action.viewportSizeY
	elseif actionType == Actions.SetMemoryRequirementMet then
		newState.memoryRequirementMet = action.memoryRequirementMet
	elseif actionType == Actions.SetSubmissionCompleted then
		newState.isSubmissionCompleted = true

	-- These are separate actions from Incrememnt since changing the state can happen without
	-- a user initiating it, and we don't want to count non-user-initiated state changes.
	elseif actionType == Actions.SetTypeOfAbuseSelection then
		newState.typeofabuseSelection = action.selection
	elseif actionType == Actions.SetReasonSelection then
		newState.reasonSelection = action.selection
	elseif actionType == Actions.SetCommentAdded then
		newState.commentAdded = action.commentAdded
	elseif actionType == Actions.SwitchToExperienceInitialSelections then
		newState = Cryo.Dictionary.join(newState, ClearNillableValues, Constants.AnalyticsExpeirenceInitialSelections)
	elseif actionType == Actions.SwitchToPersonInitialSelections then
		newState = Cryo.Dictionary.join(newState, ClearNillableValues, Constants.AnalyticsPersonInitialSelections)
	end

	return newState
end

return analyticsReducer
